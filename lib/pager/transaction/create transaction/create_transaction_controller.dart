import 'package:clone_money_lover/base/base_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateTransactionController extends BaseController{
  RxBool changeColor = false.obs ;
  TextEditingController moneyCtl = TextEditingController();
  onChange(String value){
    if(value != ''){
      changeColor.refresh();
      changeColor = true.obs;

    }
    else{
      changeColor.refresh();
      changeColor = false.obs;
      refresh();
    }
  }
  goBack(){
    Get.back();
  }
  saveTransaction(){
    if(changeColor.value == true){
      Get.back();
    }
  }
  selectCategoryTransaction(Widget child){
    showCupertinoDialog(
        context: Get.context!,
        barrierDismissible: true,
        builder: (context) {
          return child ;
        }
    );
  }
}