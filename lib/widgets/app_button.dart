import 'package:flutter/material.dart';

import '../core/utils/size_utils.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(54),
      margin: getMargin(left: 16,right: 16,bottom: 40),
      alignment: Alignment.center,
      decoration: BoxDecoration(

          // color: controller.isSelect?Color(0xFF62B47F):Color(0xFFE7E7E7),
          borderRadius: BorderRadius.circular(getHorizontalSize(12),

          )
      ),
      child: Padding(
        padding: getPadding(top: 13,bottom: 13),
        child: Text('Confirm',style: TextStyle(
          // color: controller.isSelect?Colors.white:Color(0xFF7C7C7C),
          fontWeight: FontWeight.w700,
          fontSize: getFontSize(18),
        ),),
      ),
    );
  }
}
