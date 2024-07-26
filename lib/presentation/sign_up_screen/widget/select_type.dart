import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

class SelectType extends StatelessWidget {
  const SelectType({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(top: 24,right: getSize(16),left: getSize(16)),
        child: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [

              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: getSize(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath:
                            ImageConstant
                                .imgGoogle,height: getSize(24),
                          ),
                          Padding(
                            padding: getPadding(left: getSize(16)),
                            child: Text('Google',style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: getFontSize(16),
                                color: Colors.black
                            ),),
                          )
                        ],
                      ),
                    ),
                  )
              ),
              SizedBox(
                width: getSize(16),
              ),

              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: getSize(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath:
                            ImageConstant
                                .imgFire,height: getSize(24),),
                          Padding(
                            padding: getPadding(left: getSize(16)),
                            child: Text('lbl_apple'.tr,style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: getFontSize(16),
                                color: Colors.black
                            ),),
                          )
                        ],
                      ),
                    ),
                  )
              )
            ]
        )
    );
  }
}
