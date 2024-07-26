import 'package:get/get.dart';import 'chipviewbefore6_item_model.dart';/// This class defines the variables used in the [insulin_change_measure_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InsulinChangeMeasureModel {Rx<DateTime>? selectedYourgenderTxt = Rx(DateTime.now());

Rx<String> yourgenderTxt = Rx("");

Rx<List<Chipviewbefore6ItemModel>> chipviewbefore6ItemList = Rx(List.generate(2,(index) =>Chipviewbefore6ItemModel()));

 }
