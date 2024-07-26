import 'package:get/get.dart';import 'chipviewbefore4_item_model.dart';/// This class defines the variables used in the [insulin_with_dropdown_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InsulinWithDropdownModel {Rx<DateTime>? selectedYourgenderTxt = Rx(DateTime.now());

Rx<String> yourgenderTxt = Rx("");

Rx<List<Chipviewbefore4ItemModel>> chipviewbefore4ItemList = Rx(List.generate(2,(index) =>Chipviewbefore4ItemModel()));

 }
