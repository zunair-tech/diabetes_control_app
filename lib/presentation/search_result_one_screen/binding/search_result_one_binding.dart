import '../controller/search_result_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchResultOneScreen.
///
/// This class ensures that the SearchResultOneController is created when the
/// SearchResultOneScreen is first loaded.
class SearchResultOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultOneController());
  }
}
