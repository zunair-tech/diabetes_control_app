import '../controller/details_upload_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailsUploadSuccessScreen.
///
/// This class ensures that the DetailsUploadSuccessController is created when the
/// DetailsUploadSuccessScreen is first loaded.
class DetailsUploadSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsUploadSuccessController());
  }
}
