import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../base/base_view.dart';
import '../../utils/color_utils.dart';
import '../../utils/component/item_main_function.dart';
import 'budget_controller.dart';

class BudgetView extends BaseViewModel<BudgetController> {
  @override
  Widget vmBuilder (BuildContext context) {
    final isFav = false.obs;
    final double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        title: Text('Ngân sách',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white),),
        centerTitle:true ,
        elevation: 0,
        leading: Container(),
      ),
      body:
      isFav == false.obs
          ?Container(
        child:Column(
          children: [
            Container(
              height: 30.h,
              child: Row(
                children: [
                  Expanded(
                   child: GestureDetector(
                     child: Container(
                       padding: EdgeInsets.only(top: 6.h),
                       height: double.maxFinite,
                       width: double.maxFinite,
                       decoration: BoxDecoration(
                           border: Border(bottom: BorderSide(color:controller.onChanged.value? Colors.white:ColorUtils.gray8C,width: 1.w))
                       ),
                       child: Text("ĐANG ÁP DỤNG",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color:controller.onChanged.value? Colors.white:ColorUtils.gray8C),textAlign: TextAlign.center,),
                     ),
                     onTap: (){
                       controller.onTapChangePages(0);
                     },
                   )),
                  Expanded(
                      child: GestureDetector(
                        child: Container(
                          padding: EdgeInsets.only(top: 6.h),
                          height: double.maxFinite,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color:controller.onChanged.value?ColorUtils.gray8C:Colors.white,width: 1.w))
                          ),
                          child: Text("ĐÃ KẾT THÚC",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color:controller.onChanged.value?ColorUtils.gray8C:Colors.white ),textAlign: TextAlign.center,),
                        ),
                        onTap: (){
                          controller.onTapChangePages(1);
                        },
                      )),

                ],
              ),
            ),
            Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  onPageChanged: controller.onPageChanged,
                  controller: controller.pageController,
                  // children: pages,
                  children: [
                    FirstContainer(),
                    SecondContainer()
                  ],

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
                  ItemMainFuntion(svgString:'icon_home.svg',title: "Ngân sách",marginTop: 8.h,onTap:(){},),
                  ItemMainFuntion(svgString:'icon_human.svg',width: 22.w,height: 22.w,title: "Tài khoản",marginTop: 8.h,onTap: controller.onClickAccount)
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
class FirstContainer extends StatelessWidget {
  FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.h),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 6.h),
            decoration: BoxDecoration(color: ColorUtils.black3C),
            child: Text("TẠO NGÂN SÁCH",style: TextStyle(fontSize:16.sp,color: Colors.green,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
          ),
          Container(
            decoration: BoxDecoration(color: ColorUtils.black3C),
            child: Column(
              children: [
                    ItemBudget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
class SecondContainer extends StatelessWidget {
  SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("CHƯA CÓ NGÂN SÁCH NÀO KẾT THÚC !"),
      ),
    );
  }
}
class ItemBudget extends StatelessWidget {
  const ItemBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tháng này",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),),
                Text("09/09 - 09/10",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.h),
            height: 1.h,
            color: ColorUtils.gray8C,
          ),
          ItemLimitedBudget(),
          Container(
            margin: EdgeInsets.only(left: 56.w,top: 8.h,bottom: 8.h),
            height: 1.h,
            color: ColorUtils.gray8C,
          ),
          ItemLimitedBudget()
        ],
      ),
    );
  }
}
class ItemLimitedBudget extends StatelessWidget {
  ItemLimitedBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hoá đơn",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("500.000",style: TextStyle(fontSize: 16.sp,color:Colors.white),),
                              Text("Còn lại 500.500",style: TextStyle(fontSize: 14.sp,color: ColorUtils.gray8C),),
                              SizedBox(height: 4.h,),

                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 8.h,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12.w)),
                          color: ColorUtils.gray8C,
                        ),
                      ),

                    ],
                  ),

              ))
            ],
          ),
        ],
      ),
    );
  }
}



