import 'package:clone_money_lover/pager/transaction/create%20transaction/create_transaction_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../base/base_view.dart';
import '../../../utils/color_utils.dart';

class CreateTransactionView extends BaseViewModel<CreateTransactionController> {
  @override
  Widget vmBuilder (BuildContext context) {
    final isFav = false.obs;
    final double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        leading: InkWell(
          child: Center(
            child: Container(
              margin: EdgeInsets.only(left: 16.w),
              child: Text("Huỷ",style: TextStyle( fontSize: 15.sp,color: Colors.white,fontWeight: FontWeight.w600),),
            ),
          ),
          onTap: (){
            controller.goBack();
          },
        ),
        actions: [
          InkWell(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(right: 16.w),
                child: Text("Lưu",style: TextStyle( fontSize: 15.sp,color: controller.changeColor.value ?Colors.white :ColorUtils.gray89,fontWeight: FontWeight.w600),),
              ),
            ),
            onTap: (){
              controller.saveTransaction();
            },
          ),
        ],
        title: Text('Thêm giao dịch',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white),),
        centerTitle:true ,
        elevation: 0,
      ),
      body:
      isFav == false.obs
          ?GestureDetector(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 16.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 16.w),
                color: ColorUtils.black3C,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          color: Colors.green,
                          width: 40.w,
                          height: 30.h,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Số tiền",style: TextStyle(fontSize: 12.sp,color: ColorUtils.gray8C),),
                            Container(
                              width: 200.w,
                              child: TextFormField(
                                // controller: emailController,
                                style: TextStyle(color: Colors.white,fontSize:20.sp),
                                decoration: InputDecoration(
                                  hintText: '0',
                                  hintStyle: TextStyle(color: Colors.white,fontSize:20.sp),
                                  border: InputBorder.none,
                                ),
                                // keyboardType: TextInputType.emailAddress,
                                // autofillHints: const [AutofillHints.email],
                                // validator: (value) =>
                                // value != null && value.isNotEmpty
                                //     ? null
                                //     : 'Required',
                                onChanged: (value){
                                  controller.onChange(value);
                                },
                              ),
                            ),
                            Container(
                              color: ColorUtils.gray8C ,
                              height: 1.h,
                              width:width-40.w-16.w*2-8.w,
                            ),

                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35.w,
                                width: 40.w,
                                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              InkWell(
                                child: Container(
                                  child: Text("Chọn nhóm",style: TextStyle(fontSize: 20.sp,color: ColorUtils.gray8C,fontWeight: FontWeight.w500),),
                                ),
                                onTap: (){

                                },
                              )
                            ],
                          ),
                          Icon(Icons.navigate_next,color: ColorUtils.gray8C,)
                        ],
                      ),
                      onTap: (){
                        controller.selectCategoryTransaction(ContainerCategoryTransaction());
                      },
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 35.w,
                              width: 40.w,
                              decoration: BoxDecoration(color: Colors.white,),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            InkWell(
                              child: Container(
                                child: Text("Thứ Năm, 23 tháng 11 năm 2023",style: TextStyle(fontSize: 14.sp,color: Colors.white,fontWeight: FontWeight.w500),),
                              ),
                              onTap: (){

                              },
                            )
                          ],
                        ),
                        Icon(Icons.navigate_next,color: ColorUtils.gray8C,)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        onTap: (){
          FocusManager.instance.primaryFocus?.unfocus();
        },
      )
          :Container(),
    );
  }
}
class ContainerCategoryTransaction extends StatelessWidget {
  ContainerCategoryTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        child: Column(
          children: [
            ItemCategoryTransaction(title: "Khoản thu",),
            SizedBox(
              height: 16.h,
            ),
            ItemCategoryTransaction(title: "Khoản chi",),
          ],
        ),
      ),
    );
  }
}
class ItemCategoryTransaction extends StatelessWidget {
  final String title ;
  ItemCategoryTransaction({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 25.w,
            width: 30.w,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,),
          ),
          SizedBox(
            width: 16.w,
          ),
          Text(title,style: TextStyle(fontSize: 14.sp,color: Colors.white),)
        ],
      ),
    );
  }
}

