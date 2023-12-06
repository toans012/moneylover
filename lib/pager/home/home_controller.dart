import 'package:clone_money_lover/pager/account/account_controller.dart';
import 'package:get/get.dart';
import '../../base/base_controller.dart';
import '../../routes/route_name.dart';

class HomeController extends BaseController{
  var example = new AccountController();
  void onClickAccount(){
    Get.offAndToNamed(RouteName.account);
  }
  void createTransaction(){
    Get.toNamed(RouteName.createTransaction);
  }
  void createBudget(){
    Get.offAndToNamed(RouteName.budget);
  }

}
