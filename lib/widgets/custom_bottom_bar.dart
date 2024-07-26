import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/data/store_data/pref_data.dart';
import 'package:diabetes_control_app/presentation/home_page_container_screen/controller/home_page_container_controller.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavhomeGray600,
      activeIcon: ImageConstant.imgNavhome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: Assets.imagesImgNavfood,
      activeIcon: Assets.imagesImgNavfood,
      title: "lbl_food".tr,
      type: BottomBarEnum.Food,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPlusWhiteA700,
      activeIcon: ImageConstant.imgPlusWhiteA700,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavrecord,
      activeIcon: ImageConstant.imgNavrecord,
      title: "lbl_record".tr,
      type: BottomBarEnum.Record,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavprofile,
      activeIcon: ImageConstant.imgNavprofile,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageContainerController>(
      builder: (controller) {
        return Container(
          height: getSize(130),
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.03),
                spreadRadius: getHorizontalSize(
                  2,
                ),
                blurRadius: getHorizontalSize(
                  2,
                ),
                offset: Offset(
                  0,
                  -6,
                ),
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            currentIndex: PrefData.currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgNavhomeGray600,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      color: Color(0xFF7C7C7C),
                      margin: getMargin(
                        top: 0,
                      ),
                    ),
                    SizedBox(
                      height: getSize(8),
                    ),
                    Text(
                      "Home".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color:Color(0xFF7C7C7C),
                      ),
                    ),
                  ],
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgNavhome,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        color: Color(0xFF62B47F),
                        margin: getMargin(
                          top: 0,
                        ),
                      ),
                      SizedBox(
                        height: getSize(8),
                      ),
                      Text(
                        'Home',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Color(0xFF62B47F),
                        ),
                      ),
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgNavfood,
                      height: getSize(24,),
                      width: getSize(24,),
                      color: Color(0xFF7C7C7C),
                      margin: getMargin(
                        top: 0,
                      ),
                    ),
                    SizedBox(
                      height: getSize(8),
                    ),
                    Text(
                      "Food".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color:Color(0xFF7C7C7C),
                      ),
                    ),
                  ],
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgNavfoodPrimary,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        color: Color(0xFF62B47F),
                        margin: getMargin(
                          top: 0,
                        ),
                      ),
                      SizedBox(
                        height: getSize(8),
                      ),
                      Text(
                        'Food',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Color(0xFF62B47F),
                        ),
                      ),
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF62B47F),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: getPadding(all: 14.56),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgPlusWhiteA700,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          color: appTheme.white,
                          margin: getMargin(
                            top: 0,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                label: '',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgNavrecord,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      color: Color(0xFF7C7C7C),
                      margin: getMargin(
                        top: 0,
                      ),
                    ),
                    SizedBox(
                      height: getSize(8),
                    ),
                    Text(
                      "lbl_record".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: Color(0xFF7C7C7C),
                      ),
                    ),
                  ],
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgNavrecordPrimary,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        color: Color(0xFF62B47F),
                        margin: getMargin(
                          top: 0,
                        ),
                      ),
                      SizedBox(
                        height: getSize(8),
                      ),
                      Text(
                        'Record',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Color(0xFF62B47F),
                        ),
                      ),
                    ],
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgNavprofile,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      color: Color(0xFF7C7C7C),
                      margin: getMargin(
                        top: 0,
                      ),
                    ),
                    SizedBox(
                      height: getSize(8),
                    ),
                    Text(
                      "Profile".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color:Color(0xFF7C7C7C),
                      ),
                    ),
                  ],
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgNavprofilePrimary,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        color: Color(0xFF62B47F),
                        margin: getMargin(
                          top: 0,
                        ),
                      ),
                      SizedBox(
                        height: getSize(8),
                      ),
                      Text(
                        'Profile',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: Color(0xFF62B47F),
                        ),
                      ),
                    ],
                  ),
                ),
                label: '',
              ),
            ],
            onTap: (index) {
              PrefData.currentIndex = index;
              controller.update();
              // onChanged?.call(bottomMenuList[index].type);
              controller.update();
            },
          ),
        );
      },
      init: HomePageContainerController(),
    );
  }
}

enum BottomBarEnum {
  Home,
  Food,
  Record,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isCircle = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: getFontSize(18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
