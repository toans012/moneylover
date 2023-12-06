import 'package:clone_money_lover/pager/account%20management/account_management_binding.dart';
import 'package:clone_money_lover/pager/account%20management/account_management_view.dart';
import 'package:clone_money_lover/pager/home/home_view.dart';
import 'package:clone_money_lover/pager/login%20/login_binding.dart';
import 'package:clone_money_lover/pager/login%20/login_view.dart';
import 'package:clone_money_lover/pager/transaction/create%20transaction/create_transaction_binding.dart';
import 'package:clone_money_lover/pager/transaction/create%20transaction/create_transaction_view.dart';
import 'package:clone_money_lover/routes/route_name.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../pager/account/account_binding.dart';
import '../pager/account/account_view.dart';
import '../pager/budget/budget_binding.dart';
import '../pager/budget/budget_view.dart';
import '../pager/home/home_binding.dart';

class ListPage{
  static List<GetPage> page (){
    return [
      GetPage(
          name: RouteName.homeView ,
          page: () => HomeView(),
          binding: HomeBinding()
      ),
      GetPage(
          name: RouteName.account ,
          page: () => AccountView(),
          binding: AccountBinding()
      ),
      GetPage(
          name: RouteName.accountManagement ,
          page: () => AccountManagementView(),
          binding: AccountManagementBinding()
      ),
      GetPage(
          name: RouteName.createTransaction ,
          page: () => CreateTransactionView(),
          binding: CreateTransactionBinding()
      ),
      GetPage(
          name: RouteName.budget ,
          page: () => BudgetView(),
          binding: BudgetBinding()
      ),
      GetPage(
          name: RouteName.login ,
          page: () => LoginView(),
          binding: LoginBinding()
      ),

    ];
  }
}