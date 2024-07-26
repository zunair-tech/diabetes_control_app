import 'package:get/get.dart';import 'chipviewbefore2_item_model.dart';/// This class defines the variables used in the [insulin_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InsulinModel {Rx<DateTime>? selectedYourgenderTxt = Rx(DateTime.now());

Rx<String> yourgenderTxt = Rx("");

Rx<List<Chipviewbefore2ItemModel>> chipviewbefore2ItemList = Rx(List.generate(2,(index) =>Chipviewbefore2ItemModel()));

 }
