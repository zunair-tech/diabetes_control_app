import 'package:get/get.dart';import 'chipviewbefore_item_model.dart';/// This class defines the variables used in the [glucose_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GlucoseModel {Rx<DateTime>? selectedYourgenderTxt = Rx(DateTime.now());

Rx<String> yourgenderTxt = Rx("");

Rx<List<ChipviewbeforeItemModel>> chipviewbeforeItemList = Rx(List.generate(2,(index) =>ChipviewbeforeItemModel()));

 }
