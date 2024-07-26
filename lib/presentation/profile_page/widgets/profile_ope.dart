import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';

class ProfileOpe extends StatelessWidget {
  final String? img;
  final String?  option;
  const ProfileOpe({super.key, this.img, this.option});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
              CustomImageView(svgPath:img?? ImageConstant.imgIcUser,),
              Expanded(
                child: Padding(
                  padding: getPadding(left: 8),
                  child: Text(option??'Profile',style: TextStyle(
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
    );
  }
}
