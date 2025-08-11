import 'package:get/get.dart';

import '../controllers/add_and_edit_controller.dart';

class AddAndEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAndEditController>(
      () => AddAndEditController(),
    );
  }
}
