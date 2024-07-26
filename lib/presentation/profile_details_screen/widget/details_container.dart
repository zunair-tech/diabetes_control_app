import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/theme_helper.dart';

class DetailsContainer extends StatelessWidget {
  final String? title;
  final String? data;
  const DetailsContainer({super.key, this.title, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(left: 16,right: 16,bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(getHorizontalSize(20)),
      ),
      child: Padding(
        padding: getPadding(all: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title??'Name',style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontWeight: FontWeight.w400,
              fontSize: getFontSize(14),
            ),),
            Padding(
              padding: getPadding(top: 6),
              child: Text(data??'Ronald richards',style:TextStyle(
                color: appTheme.black900,
                fontSize: getFontSize(16),
                fontWeight: FontWeight.w400,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
