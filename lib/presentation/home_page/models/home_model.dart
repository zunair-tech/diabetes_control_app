import 'package:get/get.dart';import 'categorystack_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {Rx<List<CategorystackItemModel>> categorystackItemList = Rx(List.generate(4,(index) => CategorystackItemModel()));

 }
