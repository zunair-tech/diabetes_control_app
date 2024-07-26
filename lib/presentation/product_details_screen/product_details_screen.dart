import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/my_meal_page/controller/my_meal_controller.dart';
import 'package:diabetes_control_app/presentation/product_details_screen/widget/nutritional_facts.dart';
import 'package:diabetes_control_app/presentation/product_details_screen/widget/tips_tricks.dart';
import 'package:diabetes_control_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'controller/product_details_controller.dart';

// ignore: must_be_immutable
class ProductDetailsScreen extends GetWidget<ProductDetailsController> {
  ProductDetailsScreen({Key? key}) : super(key: key);

  // MyMealController myMealController = Get.put(MyMealController());

  @override
  Widget build(BuildContext context) {
    // print("data is ======== ${myMealController.currentMeal!.name}");
    mediaQueryData = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
        backgroundColor: appTheme.white,
        body: GetBuilder<MyMealController>(
          init: MyMealController(),
          builder: (myMealController) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: getSize(350),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topLeft, children: [
                      CustomImageView(
                          imagePath: myMealController.currentMeal!.img ??
                              ImageConstant.mmRice,
                          height: getVerticalSize(350),
                          width: double.infinity,
                          alignment: Alignment.center),
                      Padding(
                        padding: getPadding(top: 35),
                        child: CustomIconButton(
                            height: getSize(40),
                            width: getSize(40),
                            margin: getMargin(left: 16, top: 16),
                            padding: getPadding(all: 7),
                            alignment: Alignment.topLeft,
                            onTap: () {
                              onTapBtnArrowleftone();
                            },
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowleftBlueGray900)
                        ),
                      )
                    ]
                    )
                 ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, top: 19,right: 16),
                          child: Text(myMealController.currentMeal!.name.toString(),
                              style: theme.textTheme.titleLarge)),
                      Padding(
                        padding: getPadding(all: 16),
                        child: Text('Rinsing rice before cooking removes much of the starch,'
                            ' thereby reducing the extent to which individual grains '
                            'will stick together.',style:theme.textTheme.bodyLarge),
                      ),

                      NutritionalFacts(),

                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Adjust as per your requirement
                            crossAxisSpacing:getSize(20),
                            mainAxisSpacing: getSize(16),
                            mainAxisExtent: getSize(94)
                        ),
                        itemCount: 3,
                        padding: getPadding(all: 16),
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                            if(index == 2 ){
                              showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (BuildContext context) {
                                  return TipsAndTricks();
                                },
                              );
                            }
                            },
                            child: Container(
                              alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF8F8F8),
                                  borderRadius: BorderRadius.circular(getHorizontalSize(12))
                                ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                CustomImageView(
                                    svgPath:tipsImg[index],
                                    height: getSize(30),
                                    width: getSize(30),

                                ),
                              Padding(
                                  padding: getPadding(top: 9),
                                  child: Text(tipsName[index],
                                      style: CustomTextStyles.titleMediumBluegray900)),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ])
        ));
  }

  List<String> tipsImg =[
    ImageConstant.imgAvocado,
    ImageConstant.imgCookingcap,
    ImageConstant.imgLightbulb,
  ];
  List<String> tipsName =[
    'Ingredients',
    'Cooking instruction',
   'Tips and tricks',
  ];


  onTapBtnArrowleftone() {
    Get.back();
  }


  onTapTipsandtrick() {
    Get.toNamed(
      AppRoutes.productDetailsTipsScreen,
    );
  }
}
