
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/home_page/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:wheel_chooser/wheel_chooser.dart';
import '../../core/utils/appbar_text.dart';
import '../../data/list_data/app_listdata.dart';
import '../../widgets/custom_elevated_button.dart';
import '../glucose_screen/widgets/chipviewbefore_item_widget.dart';
import 'controller/insulin_controller.dart';
import 'package:diabetes_control_app/presentation/popup/pop_up_menu_button1.dart' as popup;


// ignore: must_be_immutable
class InsulinScreen extends GetWidget<InsulinController> {
   InsulinScreen({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppBarText(
                  text: 'Insulin',
                  backIcon: true,
                  click: () => Get.back(),
                ),
                Divider(
                  thickness: getSize(1.5),
                  color: appTheme.gray90014,
                ),
                Padding(
                  padding: getPadding(top: 16,left: 16,right: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapDetails();
                            },
                            child: Container(
                                padding: getPadding(
                                    left: 16,
                                    top: 18,
                                    right: 16,
                                    bottom: 18),
                                decoration: AppDecoration.fillGray
                                    .copyWith(
                                    borderRadius: BorderRadiusStyle
                                        .roundedBorder12),
                                child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              top: 1, bottom: 2),
                                          child: Obx(() => Text(
                                              controller.insulinModelObj.value.yourgenderTxt.value.isEmpty?'Select Date':controller.insulinModelObj.value.yourgenderTxt.value,
                                              style: theme.textTheme
                                                  .bodyLarge))),
                                      CustomImageView(
                                          svgPath:
                                          ImageConstant.imgCalendar,
                                          height: getSize(24),
                                          width: getSize(24))
                                    ]))),

                        GetBuilder<InsulinController>(builder: (controller) {
                          return  Padding(
                            padding: getPadding(

                                bottom: 16,top: 16),
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ListTileTheme(
                                contentPadding: const EdgeInsets.all(0),
                                tileColor: Colors.transparent,
                                dense: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF8F8F8),
                                    borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                                    border: Border.all(
                                        color: Color(0xFFF8F8F8), width: getSize(2)),
                                  ),
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: getSize(16)),
                                    child: ExpansionTile(
                                      backgroundColor: Colors.transparent,
                                      onExpansionChanged: (bool expanded) {
                                        controller.tileExpanded.value = expanded;
                                        controller.update();
                                      },
                                      trailing:Container(
                                        // color: Colors.red,
                                         width: getSize(120),
                                       alignment: Alignment.centerRight,

                                       child:      Row(
                                         mainAxisSize: MainAxisSize.min,
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: [
                                           ValueListenableBuilder(
                                             builder: (context, value, child) {
                                               return popupMenu( context,controller.type.value,controller.tileExpanded,(p0) {
                                                 controller.type.value = p0;
                                                 controller.update();

                                               },);
                                             },
                                             valueListenable: controller.type,
                                           ),

                                           SizedBox(width: getSize(10),),

                                           ValueListenableBuilder(
                                             valueListenable: controller.tileExpanded,
                                             builder: (context, value, child) =>value? CustomImageView(
                                               svgPath: ImageConstant.imgArrowup,
                                             )
                                                 : CustomImageView(
                                               svgPath: ImageConstant.imgArrowdown,
                                             ),
                                           )
                                         ],
                                       ),
                                      ),

                                      controlAffinity:
                                      ListTileControlAffinity.trailing,
                                      title: Text(
                                        'Insulin amount',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: getFontSize(20),
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      collapsedBackgroundColor: Colors.transparent,
                                      collapsedTextColor: Colors.black,
                                      collapsedIconColor: Colors.black,
                                      children: [

                                        GetBuilder<InsulinController>(builder: (controller) {
                                          return Container(
                                            height: getSize(60),
                                            width: double.infinity,

                                            child:  WheelChooser.number(
                                              horizontal: true,
                                              onValueChanged: (val) {
                                                print('current Value ==> $val');
                                                homeController.insulin =val;
                                                homeController.update();
                                              },
                                              maxValue: controller.type.value ==0?150:15,
                                              // maxValue: 150,
                                              minValue: controller.type.value==0?50:2,
                                              // minValue: 50,
                                              initValue: controller.type.value==0?116:11,
                                              // initValue: co116,
                                              itemSize: 90,
                                              squeeze: 1,

                                              // perspective: 10,
                                              selectTextStyle: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                  fontSize: getFontSize(36)

                                              ),
                                              unSelectTextStyle: TextStyle(color: Colors.grey),
                                            ),
                                          );
                                        },init: InsulinController(),),
                                        Padding(
                                          padding: getPadding(bottom: 16),
                                          child: Image.asset(ImageConstant.imgCurrent),
                                        )

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },init: InsulinController(),),




                        Container(
                            width: double.infinity,
                            margin: getMargin(top: 16),
                            padding: getPadding(all: 16),
                            decoration: AppDecoration.outlineBlack
                                .copyWith(
                                borderRadius: BorderRadiusStyle
                                    .roundedBorder12),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: Text("lbl_time_base".tr,
                                          style: theme
                                              .textTheme.titleLarge)),
                                  Padding(
                                      padding: getPadding(top: 20),
                                      child: GetBuilder<InsulinController>(builder: (controller) {
                                        return  Container(
                                          color: Colors.transparent,
                                          height: getSize(50),
                                          width: double.infinity,
                                          child: ListView.builder(
                                            itemCount: AppListData.timeBase.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder:(context, index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  controller.timeIndex.value =index;
                                                  controller.timePressed.value = !controller.timePressed.value;
                                                  controller.update();
                                                },
                                                child: TimeBaseContainer(
                                                  isSelect: controller.timeIndex.value ==index,
                                                  text: AppListData.timeBase[index].time,),
                                              );
                                            }, ),
                                        );
                                      },init: InsulinController(),)


                                  )
                                ]
                            )
                        ),

                        CustomElevatedButton(
                            text: "lbl_save".tr,
                            margin: getMargin(top: 24, bottom: 5),
                            onTap: () {
                              onTapSave();
                            }
                        ),
                      ]
                  ),
                ),
              ]
          ),
        ),
    );
  }


  onTapArrowleftone() {
    Get.back();
  }


  Future<void> onTapDetails() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate:
            controller.insulinModelObj.value.selectedYourgenderTxt!.value,
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                  primary: Color(0xFF62B47F), // <-- SEE HERE
                  onPrimary: Colors.black,// <-- SEE HERE
                  onSurface: Colors.black// <-- SEE HERE
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  iconColor:  Colors.red,
                  // button text color
                ),
              ),
              unselectedWidgetColor: appTheme.greenA700,
            ),
            child: child!,
          );
        },
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.insulinModelObj.value.selectedYourgenderTxt!.value = dateTime;
      controller.insulinModelObj.value.yourgenderTxt.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }



  popupMenu(BuildContext context,String title,ValueNotifier isExpand,Function(String) value){
    return Theme(
      data: Theme.of(context).copyWith(
          dividerTheme: DividerThemeData(
            color: Colors.grey.shade50,
          ),
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: TextTheme().apply(bodyColor: Colors.white),
          listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero)),
      child: popup.PopupMenuButton<int>(
        color:  Colors.white,
        // bgColor: Colors.green,
       bgColor: Color(0xFFF8F8F8),
        isPadding: true,
        surfaceTintColor: Colors.white,

        offset: Offset(15, 20),

        shadowColor: Colors.black38,

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
        // icon:                                             ValueListenableBuilder(
        //   valueListenable: isExpand,
        //   builder: (context, value, child) =>value? CustomImageView(
        //     svgPath: ImageConstant.imgArrowup,
        //   )
        //       : CustomImageView(
        //   svgPath: ImageConstant.imgArrowdown,
        // ),
        // )

        title:     Text(
            title,
            style:TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: getFontSize(16)
            )),
        //onSelected: (item) => onSelected(context, item),
        itemBuilder: (context) => [

          buildPopupMenuItem('mg/dl', function: () async {

            value('mg/dl');
          }, isEdit: true),

          popup.PopupMenuDivider(),

          buildPopupMenuItem('mmol/L', function: () async {
            value('mmol/L');
          }, isEdit: true),

        ]
            ,
      ),
    );
  }

   popup.PopupMenuItem<int> buildPopupMenuItem(String title,
       {required VoidCallback function, bool isEdit = false}) {
     // return PopupMenuItem(
     //   padding: EdgeInsets.zero,
     //
     //     onTap: () {
     //       function();
     //     },
     //     child: getCustomFont(title, 16.sp, blackText, 1,
     //         fontWeight: FontWeight.w600));

     return popup.PopupMenuItem(
       //     child: ListTile(
       onTap: () {
         function();
       },

       padding: getPadding(left: 15,right: 15,bottom: 10,top: 10),



       child: Text(
           title,
           style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.w400,
               fontSize: getFontSize(16)
           )),
     );
   }

  onTapRowinsulinamoun() {
    Get.toNamed(
      AppRoutes.insulinWithDropdownScreen,
    );
  }

   void handleClick(String value) {
     switch (value) {
       case 'Edit':
         break;
       case 'Delete':
         break;
     }
   }


  onTapSave() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }
}
