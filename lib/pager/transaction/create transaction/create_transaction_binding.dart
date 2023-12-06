import 'package:clone_money_lover/pager/transaction/create%20transaction/create_transaction_controller.dart';
import 'package:get/get.dart';


class CreateTransactionBinding extends Bindings{
  @override
  void dependencies() {
    Get.put( CreateTransactionController());
  }
}