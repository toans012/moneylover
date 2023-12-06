import 'package:clone_money_lover/base/base_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../routes/route_name.dart';

class BudgetController extends BaseController{
  PageController pageController = PageController(keepPage: true);
  RxBool onChanged = true.obs;
  int selectedIndex = 0;
  onTapChangePages(int value){
    selectedIndex = value;
    pageController.jumpToPage(selectedIndex);
    print("change index $selectedIndex");
  }
  onPageChanged(int value){
    selectedIndex = value;
    if(selectedIndex == 0){
      onChanged.refresh();
      onChanged = true.obs;
    }
    if(selectedIndex == 1){
      onChanged.refresh();
      onChanged = false.obs;
    }
    print("onchange $onChanged");
    print('selectedIndex $selectedIndex');
  }
  void onClickHome(){
    Get.offAndToNamed(RouteName.homeView);
  }
  void onClickAccount(){
    Get.toNamed(RouteName.account);
  }
  void createTransaction(){
    Get.toNamed(RouteName.createTransaction);
  }
}