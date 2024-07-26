import 'package:get/get.dart';import 'userdetails_item_model.dart';/// This class defines the variables used in the [basic_details_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BasicDetailsOneModel {Rx<List<UserdetailsItemModel>> userdetailsItemList = Rx(List.generate(8,(index) => UserdetailsItemModel()));

 }
