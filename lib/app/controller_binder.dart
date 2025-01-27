import 'package:ecommerce/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:get/get.dart';
//manage the Get using Binder for routing
class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
  }
}
