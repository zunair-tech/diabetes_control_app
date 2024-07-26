import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/home_page/home_page.dart';
import 'package:diabetes_control_app/presentation/my_meal_page/my_meal_page.dart';
import 'package:diabetes_control_app/presentation/profile_page/profile_page.dart';
import 'package:diabetes_control_app/presentation/rewcord_page/rewcord_page.dart';
import 'package:diabetes_control_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../data/store_data/pref_data.dart';
import 'controller/home_page_container_controller.dart';

// ignore: must_be_immutable
class HomePageContainerScreen extends GetWidget<HomePageContainerController> {
   HomePageContainerScreen({Key? key}) : super(key: key);
   HomePageContainerController homePageContainerController =Get.put(HomePageContainerController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return  GetBuilder<HomePageContainerController>(builder: (controller) {
      // ignore: deprecated_member_use
      return WillPopScope(
        onWillPop: () {

          if (PrefData.currentIndex == 0) {
            {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Colors.white,
                  shape:  RoundedRectangleBorder(borderRadius:
                  BorderRadius.all(Radius.circular(16))),
                  insetPadding: getPadding(left: getSize(16),right: getSize(16)),
                  title: Padding(
                    padding: getPadding(left: getSize(15),right: getSize(15)),
                    child: Text('Are you sure you want to Exit ?',style: TextStyle(
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
                            child: Padding(
                              padding: getPadding(left: getSize(15)),
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
                                      'No',style: TextStyle(
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
                        ),
                        SizedBox(
                          width: getSize(20),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: ()  {
                              PrefData.currentIndex =0;
                              Get.back();
                              controller.onExit();
                            },
                            child: Padding(
                              padding: getPadding(right: getSize(15)),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFF62B47F),
                                ),
                                child: Padding(
                                  padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                                  child: Center(
                                    child: Text(
                                      'Yes',style: TextStyle(
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
                        ),
                      ],
                    ),
                  ],
                ),
              );
              controller.update();
            }
          }
          else {
            PrefData.currentIndex = 0;
            controller.update();
          }
          return Future(() => false);
        },
        child: Scaffold(
            backgroundColor: appTheme.white,
            body: SafeArea(
              child: Center(
                child: pageList.elementAt(PrefData.currentIndex),
              ),
            ),
            bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            }
            )
        ),
      );
    },init: HomePageContainerController(),);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Food:
        return AppRoutes.myMealPage;
      case BottomBarEnum.Record:
        return AppRoutes.rewcordPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.myMealPage:
        return MyMealPage();
      case AppRoutes.rewcordPage:
        return RecordPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  List<Widget> pageList =[
    HomePage(),
    MyMealPage(),
    HomePage(),
    RecordPage(),
    ProfilePage(),

  ];
}
