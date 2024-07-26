import 'package:get/get.dart';import 'basic_details_item_model.dart';/// This class defines the variables used in the [basic_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BasicDetailsModel {Rx<List<BasicDetailsItemModel>> basicDetailsItemList = Rx(List.generate(8,(index) => BasicDetailsItemModel()));

 }
