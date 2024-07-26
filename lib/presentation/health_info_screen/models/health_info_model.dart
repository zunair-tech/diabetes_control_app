import 'package:get/get.dart';import 'health_info_item_model.dart';/// This class defines the variables used in the [health_info_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HealthInfoModel {Rx<List<HealthInfoItemModel>> healthInfoItemList = Rx(List.generate(9,(index) => HealthInfoItemModel()));

 }
