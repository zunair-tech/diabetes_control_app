import '../controller/search_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchOneScreen.
///
/// This class ensures that the SearchOneController is created when the
/// SearchOneScreen is first loaded.
class SearchOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchOneController());
  }
}
