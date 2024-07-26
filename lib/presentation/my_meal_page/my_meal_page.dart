import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/presentation/my_meal_page/models/my_meal_model.dart';
import 'package:flutter/material.dart';
import '../my_meal_page/widgets/mealitem_item_widget.dart';
import 'controller/my_meal_controller.dart';


// ignore_for_file: must_be_immutable
class MyMealPage extends GetWidget<MyMealController>   {
  MyMealPage({Key? key}) : super(key: key);

  MyMealController controller = Get.put(MyMealController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarText(
                 text: 'My meal',
                  action: GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.addMealScreen);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: getSize(24),
                      width: getSize(24),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: appTheme.black900,
                          width: getSize(2)
                        ),
                         borderRadius: BorderRadius.circular(getHorizontalSize(8))
                      ),
                      child: Icon(Icons.add,size: getSize(20),)
                    ),
                  ),
                ),
                Divider(
                 color: appTheme.gray90014,
                 thickness: getSize(1.5),
                ),
                Padding(
                  padding: getPadding(top: 16,left: 16),
                  child: Text(
                      "msg_what_dish_do_you".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme
                          .textTheme.headlineSmall),
                ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.searchScreen);
                    },
                    child: Padding(
                      padding: getPadding(left: 16,right: 16,top: 24,bottom: 24),
                      child: TextField(
                        enabled: false,
                        onChanged: (value) {
                          // controller.filterMeal(value);
                          controller.update();
                        },
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getSize(16),
                          fontWeight: FontWeight.w400,
                        ),
                        // enabled:enabled??true ,
                        // controller:controller.searchController,
                        textInputAction:TextInputAction.search,
                        textAlign: TextAlign.start,

                        keyboardType:TextInputType.name,
                        decoration: InputDecoration(
                          hintText:'Enter a dish or product',
                          hintStyle:  TextStyle(
                            fontSize: getSize(16),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7C7C7C),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(12),
                              borderSide:  BorderSide(
                                  color:Colors.transparent
                              )

                          ),
                          focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:  BorderSide(
                                  color:Colors.transparent
                              )
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                  color: Colors.transparent
                              )
                          ),
                          enabledBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:  BorderSide(
                                  color:Colors.transparent
                              )
                          ) ,
                          disabledBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:  BorderSide(
                                  color: Colors.transparent
                              )
                          ) ,
                          filled: true,
                          contentPadding:  EdgeInsets.all(12),
                          fillColor:Color(0xD7C7C7C),
                          prefixIcon: Padding(
                            padding: getPadding(all: 14),
                            child: CustomImageView(
                              svgPath:ImageConstant.imgSearch,
                              height: getSize(20),
                              width: getSize(20),
                              color: appTheme.black900,

                            ),
                          ),
                          suffix:GestureDetector(
                            onTap: () {
                              // controller.searchController.clear();
                              controller.update();
                            },
                            child: CustomImageView(
                              svgPath:ImageConstant.imgClose,
                              height: getSize(
                                  20
                              ),
                              width: getSize(
                                  24
                              ),
                              color: appTheme.black900,

                            ),
                          ),
                        ),


                      ),
                    )
                  ),
                Padding(
                    padding:
                        getPadding(left: 16, ),
                    child: Text(
                        "msg_you_have_eaten_today".tr,
                        style: theme
                            .textTheme.titleLarge)),
                SizedBox(
                  height: getSize(16),
                ),
                Expanded(
                    child: GetBuilder<MyMealController>(builder: (controller) {
                      return   ListView.builder(
                          physics:
                          BouncingScrollPhysics(),
                          shrinkWrap: true,

                          itemCount: controller.getMeal.length,
                          itemBuilder:
                              (context, index) {
                          MyMealModel data = controller.getMeal[index];
                            return Padding(
                              padding: getPadding(bottom: 16),
                              child: MealitemItemWidget(
                                  img: controller.getMeal[index].img,
                                  name: controller.getMeal[index].name,
                                  quantity: controller.getMeal[index].quantity,
                                  onTapMealitem:
                                      () {
                                        controller.update();
                                        controller.setCurrentData(data);
                                        onTapMealitem();
                                  }
                                  ),
                            );
                          });
                    },init: MyMealController(),)
                )
              ]),
        ));
  }

  onTapMealitem() {
    Get.toNamed(AppRoutes.productDetailsScreen);
  }

  onTapPlusone() {
    Get.toNamed(
      AppRoutes.addMealScreen,
    );
  }
}
