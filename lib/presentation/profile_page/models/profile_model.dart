import 'package:get/get.dart';import 'targetglucosera_item_model.dart';/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {Rx<List<TargetglucoseraItemModel>> targetglucoseraItemList = Rx(List.generate(3,(index) => TargetglucoseraItemModel()));

 }
