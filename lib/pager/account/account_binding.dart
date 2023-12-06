import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'account_controller.dart';

class AccountBinding extends Bindings{
  @override
  void dependencies() {
    Get.put( AccountController());
  }
}