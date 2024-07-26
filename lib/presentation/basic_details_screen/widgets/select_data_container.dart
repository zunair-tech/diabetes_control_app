import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/theme_helper.dart';

class SelectDataContainer extends StatelessWidget {
  final String? text;

  final Widget showData;

  const SelectDataContainer({super.key, this.text, required this.showData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(left: 16,right: 16,bottom: 16),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(getHorizontalSize(12)),
      ),
      child: Padding(
        padding: getPadding(left: 16,top: 17,bottom: 18,right: 16),
        child: Row(
          children: [
            Expanded(
              child: Text(text??'Your gender',style: TextStyle(
                color: appTheme.black900,
                fontWeight: FontWeight.w400,
                fontSize: getFontSize(16),
              ),),
            ),

            showData,
          ],
        ),
      ),
    );
  }
}
