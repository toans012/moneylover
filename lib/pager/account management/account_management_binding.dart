import 'package:clone_money_lover/pager/account%20management/account_management_controller.dart';
import 'package:get/get.dart';

class AccountManagementBinding extends Bindings{
  @override
  void dependencies() {
    Get.put( AccountManagementController());
  }
}