import 'package:clone_money_lover/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/route_name.dart';

class AccountManagementController extends BaseController{
  void onClickHome(){
    Get.offAndToNamed(RouteName.homeView);
  }
  void createTransaction(){
    Get.toNamed(RouteName.createTransaction);
  }
  void createBudget(){
    Get.offAndToNamed(RouteName.budget);
  }
  void signOut(){
    Get.offAndToNamed(RouteName.login);
  }
}