import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/controller/basic_details_controller.dart';
import 'package:diabetes_control_app/presentation/gender_screen/widget/selectcard.dart';
import 'package:flutter/material.dart';

import '../../core/utils/appbar_text.dart';
import 'controller/gender_controller.dart';

// ignore: must_be_immutable
class GenderScreen extends GetWidget<GenderController> {
   GenderScreen({Key? key}) : super(key: key);

  BasicDetailsController basicDetailsController =Get.put(BasicDetailsController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               AppBarText(text: 'Step 1',backIcon: false),
               Divider(
                color: appTheme.gray200,
                thickness: getSize(2),
               ),
                Padding(
                  padding: getPadding(top: 30,bottom: 24,left: 16),
                  child: Text("msg_what_is_your_gender".tr,
                      style: theme.textTheme.headlineSmall),
                ),

                Expanded(
                  child: GetBuilder<GenderController>(builder: (controller) {
                    return   Container(
                      height: getSize(177),
                      width: double.infinity,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Adjust as per your requirement
                            crossAxisSpacing:getSize(20),
                            mainAxisSpacing: 0,
                            mainAxisExtent: getSize(177)
                        ),
                        itemCount: 2,
                        padding: EdgeInsets.symmetric(horizontal: getSize(16)),
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              controller.select(index);
                              if(index==0){
                                basicDetailsController.gender = 'Male';
                              }else{
                                basicDetailsController.gender= 'Female';
                              }
                              basicDetailsController.isGender =true;
                              basicDetailsController.allSelectData();
                              basicDetailsController.update();
                              controller.update();
                              print('Gender iss ===> ${basicDetailsController.gender}');
                              Get.back();


                            },
                            child: SelectCard(
                              genderImg: controller.genderImg[index].img,
                              genderName: controller.genderImg[index].name,
                              isSelect:controller.sizeIndex.value == index, ),
                          );
                        },
                      ),
                    );
                  },init: GenderController(),),
                )
              ]),
        ));
  }


  onTapMale() {
    Get.toNamed(
      AppRoutes.basicDetailsScreen,
    );
  }
}


// ImageConstant.img,
//ImageConstant.img72x60,