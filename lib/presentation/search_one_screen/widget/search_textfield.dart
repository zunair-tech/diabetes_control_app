import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/search_one_controller.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchOneController>(builder: (controller) {
      return  TextFormField(
        onChanged: (value) {
          controller.filterMedicine(value);
          controller.update();
        },
        style: TextStyle(
          color: Colors.black,
          fontSize: getSize(16),
          fontWeight: FontWeight.w400,
        ),
        // enabled:enabled??true ,
        controller:controller.searchoneController,
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
          prefixIcon: CustomImageView(
            svgPath:ImageConstant.imgSearch,
            height: getSize(24),
            width: getSize(24),
            color: appTheme.black900,
            margin: getMargin(
                top:getSize(20),
                bottom: getSize(20),
                left: getSize(20),
                right: getSize(20)
            ),
          ),
          suffix:GestureDetector(
            onTap: () {
              controller.searchoneController.clear();
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


      );
    },init: SearchOneController(),);
  }
}
