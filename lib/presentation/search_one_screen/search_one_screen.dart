import 'package:diabetes_control_app/presentation/search_one_screen/widget/search_textfield.dart';
import 'package:diabetes_control_app/presentation/search_one_screen/widget/search_view.dart';

import 'controller/search_one_controller.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchOneScreen extends GetWidget<SearchOneController> {
  const SearchOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.white,
      body: SafeArea(
        child: Padding(
          padding: getPadding(left: 16,right: 16,top: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

             SearchTextField(),
             SearchView(),
            ],
          ),
        ),
      ),
    );
  }
}
