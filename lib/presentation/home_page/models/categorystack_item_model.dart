import 'package:flutter/material.dart';
import 'package:get/get.dart';/// This class is used in the [categorystack_item_widget] screen.
class CategorystackItemModel {
 Rx<String> carbsTxt = Rx("Carbs");

Rx<String>? id = Rx("");
  String? categoriesName;
  String? icon;
  String? number;
  String? types;
  Color? backColor;
  Color? iconBack;

 CategorystackItemModel({
  this.backColor,
  this.categoriesName,
  this.number,
  this.types,
  this.icon,
  this.iconBack,
});



 }
