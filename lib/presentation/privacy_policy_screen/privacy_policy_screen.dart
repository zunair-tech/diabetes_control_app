import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:flutter/material.dart';

import 'controller/privacy_policy_controller.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              AppBarText(
               text: 'Privacy policy',
               backIcon: true,
                click: () => Get.back(),
              ),
                Divider(
                 thickness: getSize(1.5),
                 color: appTheme.gray90014,
                ),
                Container(
                    padding: getPadding(
                        left: 17, top: 25, right: 17, bottom: 25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("1. Introduction".tr,
                              style: CustomTextStyles
                                  .titleMediumBluegray900),
                          Container(
                              width: getHorizontalSize(392),
                              margin: getMargin(top: 5),
                              child: Text("We are responsible for maintaining and protecting the Personal Information under our control. We have designated an individual or individuals who is/are responsible for compliance with our privacy policy.".tr,
                                  maxLines: 9,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge)),
                          Padding(
                              padding: getPadding(top: 21),
                              child: Text("2. Identifying Purposes".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: getHorizontalSize(379),
                              margin: getMargin(top: 13, right: 16),
                              child: Text("We collect, use and disclose Personal Information to provide you with the product or service you have requested and to offer you additional products and services we believe you might be interested in. The purposes for which we collect Personal Information will be identified before or at the time we collect the information. In certain circumstances, the purposes for which information is collected may be clear, and consent may be implied, such as where your name, address and payment information is provided as part of the order process.".tr,
                                  maxLines: 11,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge)),
                          Padding(
                              padding: getPadding(top: 42),
                              child: Text("3. Consent".tr,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              width: getHorizontalSize(383),
                              margin: getMargin(
                                  top: 13, right: 10, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Knowledge and consent are required for the collection, use or disclosure of Personal Information except where required or permitted by law. Providing us with your Personal Information is always your choice. However, your decision not to provide certain information may limit our ability to provide you with our products or services. We will not require you to consent to the collection, use, or disclosure of information as a condition to the supply of a product or service, except as required to be able to supply the product or service.".tr,
                                        style: theme.textTheme.bodyLarge),
                                  ]),
                                  textAlign: TextAlign.left))
                        ]))
              ]),
        ));
  }


  onTapArrowleftone() {
    Get.back();
  }
}
