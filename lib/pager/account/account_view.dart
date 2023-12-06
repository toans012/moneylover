import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../base/base_view.dart';
import '../../utils/color_utils.dart';
import '../../utils/component/item_main_function.dart';
import 'account_controller.dart';

class AccountView extends BaseViewModel<AccountController> {
  @override
  Widget vmBuilder (BuildContext context) {
    final isFav = false.obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        title: Text('Mở rộng',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white),),
        centerTitle:true ,
        elevation: 0,
        leading: Container(),
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
                      color: ColorUtils.black3C,
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
                          Container(
                            color: ColorUtils.gray89,
                            height: 1.h,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          InkWell(
                            child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 16.w),
                                width: MediaQuery.of(context).size.width,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/ic_human.svg',width: 25.w,height: 25.h,color: Colors.white,),
                                        SizedBox(
                                          width: 6.w,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Quản lý tài khoản",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14.sp),),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            Text("Tài khoản miễn phí"),
                                          ],
                                        )
                                      ],
                                    ),
                                    Icon(Icons.navigate_next)

                                  ],
                                )
                            ),
                            onTap: (){
                              controller.onClickAccountManagement();
                            },
                          )
                        ],
                      ),
                    )
                  ),
                  ItemOption()
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
                  ItemMainFuntion(svgString:'icon_home.svg',title: "Ngân sách",marginTop: 8.h,onTap: controller.createBudget,),
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
class ItemOption extends StatelessWidget {
   ItemOption({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.h),
        decoration: BoxDecoration(
          color: ColorUtils.black3C,
        ),
        child: Container(),
      ),
    );
  }
}
