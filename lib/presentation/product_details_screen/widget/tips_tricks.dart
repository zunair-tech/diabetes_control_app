import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

class TipsAndTricks extends StatelessWidget {
  const TipsAndTricks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(32)),topRight: Radius.circular(getHorizontalSize(32)))

      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: getPadding(top: 40),
            child: Text('Tips & tricks',style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getFontSize(20),
              color: appTheme.black900,
            ),),
          ),
          Padding(
            padding: getPadding(bottom: 16,top: 16),
            child: Divider(
              thickness: getSize(1.5),
              color: appTheme.gray90014,
            ),
          ),
          Padding(
            padding: getPadding(left: 16,right: 16,bottom: 16),
            child: Text(
                "msg_rice_is_the_staple"
                    .tr,
                maxLines: 6,
                overflow: TextOverflow
                    .ellipsis,
                style: theme.textTheme
                    .bodyLarge),
          ),
          Padding(
            padding:getPadding(left: 16,right: 16,bottom: 16),
            child: Text(
                "msg_it_is_becoming_an"
                    .tr,
                maxLines: 5,
                overflow: TextOverflow
                    .ellipsis,
                style: theme.textTheme
                    .bodyLarge),
          ),
          Padding(
            padding: getPadding(left: 16,right: 16,bottom: 16),
            child: Text(
                "msg_rice_is_a_poor_source"
                    .tr,
                maxLines: 6,
                overflow: TextOverflow
                    .ellipsis,
                style: theme.textTheme
                    .bodyLarge),
          ),
        ],
      ),
    );
  }
}
