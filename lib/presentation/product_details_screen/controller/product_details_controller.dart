import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/product_details_screen/models/product_details_model.dart';/// A controller class for the ProductDetailsScreen.
///
/// This class manages the state of the ProductDetailsScreen, including the
/// current productDetailsModelObj
class ProductDetailsController extends GetxController {
 Rx<ProductDetailsModel> productDetailsModelObj = ProductDetailsModel().obs;

 }
