import 'package:clone_money_lover/pager/account%20management/account_management_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../base/base_view.dart';
import '../../utils/color_utils.dart';
import '../../utils/component/item_main_function.dart';

class AccountManagementView extends BaseViewModel<AccountManagementController> {
  @override
  Widget vmBuilder (BuildContext context) {
    final isFav = false.obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        title: Text('Mở rộng',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white),),
        centerTitle:true ,
        elevation: 0,
      ),
      body:
      isFav == false.obs
          ?Container(
        child: Column(
          children: [
            Expanded(child: Container(
              child: ListView(
                children: [
                  Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorUtils.black3C,
                          border: Border(
                            bottom: BorderSide(
                              color: ColorUtils.gray8C, width: 1.w,),
                            top: BorderSide(
                              color: ColorUtils.gray8C, width: 1.w,),
                          ),
                        ),

                        child: Column(
                          children: [
                            SizedBox(
                              height: 16.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              height:50.h,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text("trungduc0299",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14.sp),),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text("trungduc0299@gmail.com"),
                            SizedBox(
                              height: 16.h,
                            ),
                            // Container(
                            //   color: ColorUtils.gray89,
                            //   height: 1.h,
                            // ),
                            // SizedBox(
                            //   height: 16.h,
                            // ),

                          ],
                        ),
                      )
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InkWell(
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 6.h),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: ColorUtils.black3C,
                          border: Border(
                            bottom: BorderSide( //                   <--- left side
                              color: ColorUtils.gray8C,
                              width: 1.w,
                            ),
                            top: BorderSide( //                    <--- top side
                              color: ColorUtils.gray8C,
                              width: 1.w,
                            ),
                          ),
                        ),
                        child:Center(
                          child: Text("Đăng xuất",style: TextStyle(color: Colors.red,fontSize: 14.sp),),
                        )
                    ),
                    onTap: (){
                      // controller.signOut();
                    },
                  )
                ],
              ),
            )),
            Container(
              color: Colors.black,
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ItemMainFuntion(svgString:'icon_home.svg',title: "Tổng quan",marginTop: 8.h,onTap:controller.onClickHome),
                  ItemMainFuntion(svgString:'icon_home.svg',title: "Sổ giao dịch",marginTop: 8.h,onTap: (){}),
                  ItemMainFuntion(svgString:'icon_add_green.svg',width: 40.w,height: 40.w,title: "",marginTop: 4.h,onTap:controller.createTransaction),
                  ItemMainFuntion(svgString:'icon_home.svg',title: "Ngân sách",marginTop: 8.h,onTap: controller.createBudget),
                  ItemMainFuntion(svgString:'icon_human.svg',width: 22.w,height: 22.w,title: "Tài khoản",marginTop: 8.h,onTap: (){},)
                ],
              ),
            )

          ],
        ),
      )
          :Container(),
    );
  }
}