import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

import '../core/utils/size_utils.dart';
import '../generated/assets.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import 'custom_image_view.dart';
import 'custom_text_form_field.dart';


// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  final Color? color;
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller, this.color,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color??Colors.white,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12,
          ),
        ),
        border: Border.all(
          color: Color(0xFFCFCFCF),
          width: getHorizontalSize(
            1.5,
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: getPadding(
                left: 16,
                top: 17,
                bottom: 16,
              ),
              child: Text(
                "+${country.phoneCode}",
                style: CustomTextStyles.bodyLargeSFProText,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _openCountryPicker(context);
            },
               child: Padding(
                 padding: getPadding(left: 8),
                 child: CustomImageView(
                   imagePath: Assets.assetsImagesArrowDown,
                   color: appTheme.black900,
                   height: getSize(15),

                 ),
               )
          ),
          Expanded(
            child: CustomTextFormField(
              controller: controller,
              autofocus: false,
              textInputType: TextInputType.number,

              borderDecoration: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.transparent,
                )
              ),
              margin: getMargin(
                left: 5,
                right: 30,
              ),
              textStyle: TextStyle(
                color:  Color(0xFF7C7C7C),
                fontWeight: FontWeight.w400,
                fontSize: getFontSize(16)
              ),
              hintText: "Enter Phone Number",
              hintStyle: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: getFontSize(16),
                fontWeight: FontWeight.w400,
              ),
              textInputAction: TextInputAction.next,

            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(


        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(



            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14),color: Colors.black),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14),color: Colors.black),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(

          searchInputDecoration: InputDecoration(
            fillColor: Colors.white,
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,

          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),

          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,

        ),
      );
}
