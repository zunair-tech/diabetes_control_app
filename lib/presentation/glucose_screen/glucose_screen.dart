import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/data/list_data/app_listdata.dart';
import 'package:diabetes_control_app/presentation/home_page/controller/home_controller.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:wheel_chooser/wheel_chooser.dart';
import '../glucose_screen/widgets/chipviewbefore_item_widget.dart';
import 'controller/glucose_controller.dart';


// ignore: must_be_immutable
class GlucoseScreen extends GetWidget<GlucoseController> {
   GlucoseScreen({Key? key}) : super(key: key);


  HomeController homeController =Get.put(HomeController());

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
                text: 'Glucose',
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
                                              controller.glucoseModelObj.value.yourgenderTxt.value.isEmpty?'Select Date':controller.glucoseModelObj.value.yourgenderTxt.value,
                                              style: theme.textTheme
                                                  .bodyLarge))),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCalendar,
                                          height: getSize(24),
                                          width: getSize(24))
                                    ]))),
                      
                      GetBuilder<GlucoseController>(builder: (controller) {
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
                                      controller.tileExpanded = expanded;
                                      controller.update();
                                    },
                                    trailing:Container(
                                      width: getSize(95),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text('mg/dl',style: TextStyle(
                                            color: Colors.black,
                                            fontSize: getFontSize(18),
                                            fontWeight: FontWeight.w700,
                                          ),),
                                          controller.tileExpanded
                                              ? CustomImageView(
                                            svgPath: ImageConstant.imgArrowup,
                                          )
                                              : CustomImageView(
                                            svgPath: ImageConstant.imgArrowdown,
                                          ),
                                        ],
                                      ),
                                    ),
                                    controlAffinity:
                                    ListTileControlAffinity.trailing,
                                    title: Text(
                                      'Glucose level',
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

                                      Container(
                                        height: getSize(55),
                                        width: double.infinity,

                                        child:  WheelChooser.number(
                                          horizontal: true,
                                          onValueChanged:(val) {
                                            print('Current Glucose Level == $val');
                                            homeController.glucose = val;
                                            homeController.update();

                                          },
                                          maxValue: 150,
                                          minValue: 50,
                                          initValue: 116,
                                          itemSize: 90,
                                          squeeze: 1,
                                          // perspective: 1,
                                          selectTextStyle: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: getFontSize(36)

                                          ),
                                          unSelectTextStyle: TextStyle(color: Colors.grey),
                                        ),
                                      ),
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
                      },init: GlucoseController(),),




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
                                      child: GetBuilder<GlucoseController>(builder: (controller) {
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
                                      },init: GlucoseController(),)


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
                            )
                      ]
                  ),
                )
              ]
          ),
        )
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  Future<void> onTapDetails() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate:
            controller.glucoseModelObj.value.selectedYourgenderTxt!.value,
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
      controller.glucoseModelObj.value.selectedYourgenderTxt!.value = dateTime;
      controller.glucoseModelObj.value.yourgenderTxt.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }

  onTapSave() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }
}
