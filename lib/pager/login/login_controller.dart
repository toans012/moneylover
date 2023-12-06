import 'package:clone_money_lover/base/base_controller.dart';
import 'package:flutter/cupertino.dart';
import '../../api/authentication/authentication.dart';

class LoginController extends BaseController{
  final Authentication authentication = Authentication();
  TextEditingController loginCtl = TextEditingController();
  TextEditingController passCtl = TextEditingController();

  void onClickLogin(String email, String password){
    authentication.loginUserWithEmailAndPassword(email, password);
  }
  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  //   authentication.onReady();
  // }
  // void goToSignUpScreen(){
  //   Get.offAllNamed(RouteName.signUp);
  // }
}