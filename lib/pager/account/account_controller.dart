import 'package:clone_money_lover/base/base_controller.dart';
import 'package:get/get.dart';

import '../../routes/route_name.dart';

class AccountController extends BaseController{
  void onClickHome(){
    Get.offAndToNamed(RouteName.homeView);
  }
  void onClickAccountManagement(){
    Get.toNamed(RouteName.accountManagement);
  }
  void createTransaction(){
    Get.toNamed(RouteName.createTransaction);
  }
  void createBudget(){
    Get.offAndToNamed(RouteName.budget);
  }
}