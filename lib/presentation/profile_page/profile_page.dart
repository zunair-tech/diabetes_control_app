import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import '../../data/store_data/pref_data.dart';
import 'controller/profile_controller.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilePage extends GetWidget<ProfileController> {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBarText(
              text: 'Profile',
            ),
            Divider(
              thickness: getSize(1.5),
              color: appTheme.gray90014,
            ),

            CustomImageView(
              margin: getMargin(top: 40),
              svgPath: ImageConstant.imgAvtar1,
              height: getSize(104),
              width: getSize(104),
            ),
            Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Text(
                "Cliff".tr,
                style: CustomTextStyles.titleMediumBluegray900,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 7,
              ),
              child: Text(
                "cliffchong1@gmail.com".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              height: getSize(40),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if(index==0 ){
                    Get.toNamed(AppRoutes.profileDetailsScreen);
                  }
                  else if(  index==1){
                    Get.toNamed(AppRoutes.healthInfoScreen);
                  }
                  else if(index == 2){
                    Get.toNamed(AppRoutes.targetGlucoseRangeScreen);
                  }
                  else if(index==3 ){
                    Get.toNamed(AppRoutes.privacyPolicyScreen);
                  }
                  else{
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        backgroundColor: Colors.white,
                        shape:  RoundedRectangleBorder(borderRadius:
                        BorderRadius.all(Radius.circular(16))),
                        insetPadding: getPadding(left: 10,right: 10),
                        title: Padding(
                          padding: getPadding(left: 25,right: 25),
                          child: Text('Are you sure you want to Log out?',style: TextStyle(
                            color: Colors.black,
                            fontSize: getFontSize(18),
                            fontWeight: FontWeight.w600,
                          ),),
                        ),

                        actions: <Widget>[
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Color(0xFF62B47F),
                                          width: getSize(1.5),
                                        )
                                    ),
                                    child: Padding(
                                      padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                                      child: Center(
                                        child: Text(
                                          'Cancel',style: TextStyle(
                                          color: Color(0xFF62B47F),
                                          fontSize: getFontSize(18),
                                          fontWeight: FontWeight.w700,
                                        ),

                                          textAlign: TextAlign.center,

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getSize(20),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: ()  {
                                    PrefData.currentIndex =0;
                                    PrefData.setLogin(true);
                                    Get.toNamed(
                                      AppRoutes.logInScreen,
                                    );

                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xFF62B47F),
                                    ),
                                    child: Padding(
                                      padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                                      child: Center(
                                        child: Text(
                                          'Log out',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: getFontSize(18),
                                          fontWeight: FontWeight.w700,
                                        ),

                                          textAlign: TextAlign.center,

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    );
                  }
                },
                child: Padding(
                  padding:getPadding(left: 16,right: 16,bottom: 16) ,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(getHorizontalSize(8)),
                    ),
                    child: Padding(
                      padding: getPadding(top: 16.5,left: 16,right: 16,bottom: 15.5),
                      child: Row(
                        children: [
                          CustomImageView(svgPath: icons[index],),
                          Expanded(
                            child: Padding(
                              padding: getPadding(left: 8),
                              child: Text(optionName[index],style: TextStyle(
                                  color: appTheme.black900,
                                  fontSize: getFontSize(16),
                                  fontWeight: FontWeight.w400
                              ),),
                            ),
                          ),
                          CustomImageView(svgPath: ImageConstant.imgIcArrow,),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },)

          ],
        ),
      ),
    );
  }
  List<String> icons =[
    ImageConstant.pUser,
    ImageConstant.pNote,
    ImageConstant.pDrop,
    ImageConstant.pPPolicy,
    ImageConstant.pLogout,
  ];
  List<String> optionName =[
    'Profile',
    'Health info',
    'Target Glucose range',
    'Privacy Policy',
    'Log out',
  ];
}
