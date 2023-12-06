import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ItemMainFuntion extends StatelessWidget {
  double? width = 25.w;
  double? height = 25.w ;
  double marginTop ;
  String svgString ;
  String title ;
  final VoidCallback onTap ;
  ItemMainFuntion({super.key,required this.svgString,required this.title,this.width,this.height,required this.marginTop, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: marginTop,left: 8.w),
        child:Column(
          children: [
            SvgPicture.asset("assets/${svgString}",width: width,height: height),
            Text(title,style: TextStyle(fontSize: 10.sp),)
          ],
        ),
      ),
      onTap: (){
        onTap();
      },
    );
  }
}