import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/controller/basic_details_controller.dart';
import 'package:diabetes_control_app/presentation/diabetes_type_screen/controller/diabetes_type_controller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectRadioContainer extends StatelessWidget {
  final int? radioValue;
  final String radioType;
   SelectRadioContainer({super.key, this.radioValue, required this.radioType});


  BasicDetailsController basicDetailsController = Get.put(BasicDetailsController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiabetesTypeController>(builder: (controller) {
       return  GestureDetector(
         onTap: () {
          controller.card.value = radioValue!;
          controller.update();
           basicDetailsController.diabetesType = radioType;
           basicDetailsController.update();
           controller.isSelect =true;
           controller.update();
         },
         child: Container(
           margin: getMargin(left: 16,right: 16,bottom: 16),
           decoration: BoxDecoration(
               color: Color(0xFFF8F8F8),
               borderRadius: BorderRadius.circular(getHorizontalSize(8))
           ),
           child: Padding(
             padding: getPadding(left: 16,top: 2,bottom: 2,),
             child: Row(
               children: [
                 Expanded(
                   child: Text(radioType,style: TextStyle(
                     color: appTheme.black900,
                     fontSize: getFontSize(16),
                     fontWeight: FontWeight.w400,
                   ),),
                 ),
                 Theme(

                   data: ThemeData(unselectedWidgetColor: Color(0xFF7C7C7C),),
                   child: Padding(
                     padding: EdgeInsets.zero,
                     child: Radio(


                       activeColor:appTheme.greenA700,
                       value: radioValue??0,
                       groupValue: controller.card.value,
                       onChanged: (values){
                         // selectCard;
                         controller.selectCard(values!);
                         basicDetailsController.diabetesType = radioType;
                         basicDetailsController.update();
                         controller.isSelect =true;
                         controller.update();

                       },
                     ),
                   ),
                 ),

               ],
             ),
           ),
         ),
       );
    },init: DiabetesTypeController(),);
  }
}
