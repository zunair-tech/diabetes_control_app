
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

Widget getShadowDefaultContainer(
    {double? height,
      double? width,
      EdgeInsets? margin,
      EdgeInsets? padding,
      Color? color,
      Widget? child,
      double radius = 22}) {

  return Container(
    height: height,
    width: width,
    margin: margin,
    padding: padding,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(getHorizontalSize(8)),
      boxShadow: [
        BoxShadow(
          color: const Color(0x289a90b8),
          blurRadius: getHorizontalSize(32),
          offset: const Offset(0, 9),
        ),
      ],
      color: color,
    ),
    child: child,
  );
}



PopupMenuButton<String> buildPopupMenuButton(
    PopupMenuItemSelected handleClick) {
  return PopupMenuButton<String>(
    onSelected: handleClick,
    color: Colors.white,
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(getHorizontalSize(22)))),
    elevation: getSize(2),
    itemBuilder: (BuildContext context) {
      return {'Edit', 'Delete'}.map((String choice) {
        return PopupMenuItem<String>(
          padding: EdgeInsets.zero,
          value: choice,
          height: getSize(45),
          enabled: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: getSize(10),
              ),
              Text(choice,style : TextStyle(
                fontSize: getFontSize(15),
                color: Colors.black,
                fontWeight: FontWeight.w500
              ))
                  .paddingSymmetric(horizontal: 14),
              (choice == 'Edit')
                  ? Divider().paddingOnly(top: 20)
                  : SizedBox(),
            ],
          ),
        );
      }).toList();
    },
    child: Text('menu.svg',),
  );
}


