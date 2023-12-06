import 'package:clone_money_lover/pager/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../base/base_view.dart';
import '../../utils/color_utils.dart';
import '../../utils/component/item_main_function.dart';



class HomeView extends BaseViewModel<HomeController> {
  @override
  Widget vmBuilder (BuildContext context) {
    final isFav = false.obs;
    return Scaffold(
      body:
      isFav == false.obs
          ?Container(
            child: Column(
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  child: ListView(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("57,000.00 đ",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                                Icon(Icons.notifications,size: 25.sp,)
                              ],
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              children: [
                                Text("Tổng số dư",style: TextStyle(fontSize: 15.sp,color: ColorUtils.gray89),),
                                // Icon(Icons.)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Container(
                        // padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12.w)),
                            color: ColorUtils.black3C
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 12.h,right: 8.w,left: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Ví của tôi",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),),
                                  Text("Xem tất cả",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color: Colors.green))
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.symmetric(vertical: 12.h),
                              color: Colors.black26,
                              height: 1.h,
                            ),

                            Container(
                              margin: EdgeInsets.only(bottom: 12.h,right: 8.w,left: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Tiền mặt",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600),),
                                  Container(
                                    child: Row(
                                      children: [
                                        // SvgPicture.asset(assetName)
                                        Text("57,000.00đ",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600),)],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.h,bottom: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Giao dịch gần đây",style: TextStyle(fontSize: 13.sp,color: ColorUtils.gray89),),
                            Text("Xem tất cả",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color: Colors.green))
                          ],
                        ),
                      ),
                      Container(
                        height: 150.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12.w)),
                            color: ColorUtils.black3C
                        ),
                        padding: EdgeInsets.all(16.w),
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder:(context,index){
                            return ItemTransacation();
                          },
                          separatorBuilder: ( context, int index) {
                            return SizedBox(
                              height: 10.h,
                            );
                          },
                        ),
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
                      ItemMainFuntion(svgString:'icon_home.svg',title: "Tổng quan",marginTop: 8.h,onTap: (){}),
                      ItemMainFuntion(svgString:'icon_home.svg',title: "Sổ giao dịch",marginTop: 8.h,onTap: (){}),
                      ItemMainFuntion(svgString:'icon_add_green.svg',width: 40.w,height: 40.w,title: "",marginTop: 4.h,onTap: controller.createTransaction),
                      ItemMainFuntion(svgString:'icon_home.svg',title: "Ngân sách",marginTop: 8.h,onTap: controller.createBudget),
                      ItemMainFuntion(svgString:'icon_human.svg',width: 22.w,height: 22.w,title: "Tài khoản",marginTop: 8.h,onTap:controller.onClickAccount,)
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
class ItemTransacation extends StatelessWidget {
  const ItemTransacation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
         children: [
           Container(
             child: Row(
               children: [
                 Container(
                   color: Colors.green,
                   width: 30.w,
                   height:20.h,
                 ),
                 SizedBox(
                   width: 8.w,
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       width:255.w,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Ăn uống",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),),

                           Text("180,000.00",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color: Colors.red)),
                         ],
                       ),
                     ),
                     SizedBox(
                       height: 4.h,
                     ),
                     Text("Chủ Nhật, 08 tháng 1 năm 2023")
                   ],
                 )
               ],
             ),
           )
         ],
       ),
    );
  }
}


