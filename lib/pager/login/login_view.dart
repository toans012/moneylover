import 'package:clone_money_lover/pager/login%20/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../base/base_view.dart';
import '../../utils/color_utils.dart';

class LoginView extends BaseViewModel<LoginController> {
  @override
  Widget vmBuilder (BuildContext context) {
    final isFav = false.obs;
    return Scaffold(
      body:
      isFav == false.obs
          ?GestureDetector(
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Center(
              child:Text("Đăng nhập",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.sp),),
            ),
            SizedBox(
              height: 16.h,
            ),
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 16.w),
            //   padding: EdgeInsets.all(16.w),
            //   decoration: BoxDecoration(
            //     color: ColorUtils.black3C,
            //     borderRadius: BorderRadius.all(Radius.circular(22.w)),
            //   ),
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         width: 16.w,
            //       ),
            //       SvgPicture.asset("assets/icon_fb.svg"),
            //       SizedBox(
            //         width: 24.w,
            //       ),
            //       Text("CONTINUE WITH FACEBOOK",style: TextStyle(fontSize: 14.sp,color: Colors.white,fontWeight: FontWeight.w500),)
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 16.h,
            // ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50.w),
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 6.h),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: ColorUtils.grayBF),
                borderRadius: BorderRadius.all(Radius.circular(6.w)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 12.w,
                  ),
                  SvgPicture.asset("assets/icon_google.svg"),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text("Kết nối với Google",style: TextStyle(fontSize: 12.sp,color: Colors.red,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Center(
              child: Text("HOẶC",style: TextStyle(color: ColorUtils.gray8C,fontWeight: FontWeight.w700,fontSize: 14.sp),),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 35.h,
              margin: EdgeInsets.symmetric(horizontal: 50.w),
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                  color: ColorUtils.black3C,
                  borderRadius: BorderRadius.all(Radius.circular(6.w))
              ),
              child: TextFormField(
                controller: controller.loginCtl,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: ColorUtils.black3C,
                    filled: true,
                    hintText: "Email",
                    // suffixIcon: icon,
                    hintStyle: TextStyle(fontSize: 16.sp,color: ColorUtils.gray8C)
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 35.h,
              margin: EdgeInsets.symmetric(horizontal: 50.w),
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                  color: ColorUtils.black3C,
                  borderRadius: BorderRadius.all(Radius.circular(6.w))
              ),
              child: TextFormField(
                controller: controller.passCtl,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: ColorUtils.black3C,
                    filled: true,
                    hintText: "Mật khẩu",
                    // suffixIcon: icon,
                    hintStyle: TextStyle(fontSize: 16.sp,color: ColorUtils.gray8C)
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            InkWell(
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 50.w),
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(6.w)),
                  ),
                  child:Center(
                    child: Text("Đăng nhập",style: TextStyle(fontSize: 14.sp,color: Colors.white,fontWeight: FontWeight.w500),),
                  )
              ),
              onTap: (){
                controller.onClickLogin(controller.loginCtl.text.trim(), controller.passCtl.text.trim());
              },
            ),
            // SizedBox(
            //   height: 16.h,
            // ),
            // Center(
            //   child: Text("Forgot Password ?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14.sp),),
            // ),
            // SizedBox(
            //   height: 50.h,
            // ),
            // InkWell(
            //   child: RichText(
            //       softWrap: true,
            //       text: TextSpan(
            //           children: <TextSpan>[
            //             TextSpan(text: 'DON''T HAVE AN ACCOUNT?',
            //                 style: TextStyle(
            //                     color: ColorUtils.gray8C,
            //                     fontSize: 14.sp,
            //                     fontWeight: FontWeight.w600
            //                 )),
            //             TextSpan(text: ' SIGN UP',
            //                 style: TextStyle(
            //                     color: ColorUtils.black3C,
            //                     fontSize: 14.sp,
            //                     fontWeight: FontWeight.w600
            //                 )),
            //
            //           ]
            //       )
            //   ),
            //   onTap: (){
            //     // controller.goToSignUpScreen();
            //   },
            // ),
          ],
        ),
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
        },
      )
          :Container(),
    );
  }
}
