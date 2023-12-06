import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class BaseCommonWidgets  {
  // void showSnackBar({String title = "Thông báo", String message = ""}) {
  //   Get.snackbar(title, message,
  //     colorText: Colors.black,
  //     backgroundColor: MyColor.content.withOpacity(0.7),
  //     barBlur: 8.0,
  //     snackPosition: SnackPosition.TOP,
  //     margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 10),
  //     // padding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 10),
  //     duration: Duration(seconds: 2),
  //     snackStyle: SnackStyle.FLOATING,
  //     shouldIconPulse: true,
  //   );
  // }
  // void showSnackBarMessage({String title = "", String message = "", void onTap()}) {
  //   Get.snackbar(
  //       title, message,
  //       icon: Padding(
  //         padding: const EdgeInsets.only(left: 8.0),
  //         child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset("assets/logo/logoDark.png")),
  //       ),
  //       colorText: Colors.black,
  //       backgroundColor: MyColor.content.withOpacity(0.7),
  //       barBlur: 8.0,
  //       snackPosition: SnackPosition.TOP,
  //       margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 10),
  //       // padding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 10),
  //       duration: Duration(seconds: 4),
  //       snackStyle: SnackStyle.FLOATING,
  //       shouldIconPulse: true,
  //       onTap: (snack){
  //         onTap();
  //       }
  //   );
  // }
  // void showErrorSnackBar({String title = "Thông báo", String message = ""}) {
  //   Get.snackbar(title, message,
  //       colorText: Colors.white,
  //       backgroundColor: Color(0x8AD32F2F),
  //       barBlur: 10.0,
  //       snackPosition: SnackPosition.TOP,
  //       margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
  //       duration: Duration(seconds: 2),
  //       icon: Icon(Icons.error, color: Colors.white)
  //   );
  // }
  //
  // void showSuccessSnackBar({String title = "Thông báo", String message = ""}) {
  //   Get.snackbar(title, message,
  //     backgroundColor: Color(0x8A2E7D32),
  //     barBlur: 10.0,
  //     snackPosition: SnackPosition.TOP,
  //     margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
  //     duration: Duration(seconds: 2),
  //     icon: Icon(Icons.check_circle,color: Colors.white,),
  //     colorText: Colors.white,
  //
  //   );
  // }
  //
  // Future showAlert({
  //   Widget content,
  //   String middleText,
  //   String textBtn = "Đồng ý",
  // }) async{
  //   Alert(
  //     closeIcon: Container(),
  //     context: Get.context,
  //     style: AlertStyle(
  //       backgroundColor: MyColor.background,
  //       titleStyle: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),
  //       descStyle: TextStyle(fontSize: 13,color: MyColor.content),
  //       descTextAlign: TextAlign.center,
  //       alertBorder: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(0.0),
  //         side: BorderSide(
  //           color: MyColor.background,
  //         ),
  //       ),
  //     ),
  //     title: "Thông báo",
  //     content: content != null
  //         ? content
  //         : Padding(
  //         padding: EdgeInsets.only(top: 16),
  //         child: Text(middleText,style: TextStyle(fontSize: 13,color: MyColor.content),textAlign: TextAlign.center,)
  //     ),
  //     buttons: [
  //       DialogButton(
  //         height: 30,
  //         width: 80,
  //         radius: BorderRadius.circular(12),
  //         gradient: MyColor.gradientPrimary,
  //         child: Text(
  //           textBtn,
  //           style: TextStyle(color: Colors.white, fontSize: 14),
  //         ),
  //         onPressed: (){
  //           Get.back();
  //         },
  //       ),
  //     ],
  //   ).show();
  // }
  // void showAlertConfetti({
  //   String middleText,
  //   String textBtn = "Đồng ý",
  // }) {
  //   ConfettiController controller = new ConfettiController(duration: Duration(seconds: 1));
  //   Alert(
  //     closeIcon: Container(),
  //     context: Get.context,
  //     style: AlertStyle(
  //       backgroundColor: MyColor.background,
  //       titleStyle: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),
  //       descStyle: TextStyle(fontSize: 13,color: MyColor.content),
  //       descTextAlign: TextAlign.center,
  //       alertBorder: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(0.0),
  //         side: BorderSide(
  //           color: MyColor.background,
  //         ),
  //       ),
  //     ),
  //     title: "Yay",
  //     onWillPopActive: true,
  //     content: Stack(
  //       alignment: Alignment.topCenter,
  //       children: [
  //         Padding(
  //             padding: EdgeInsets.only(top: 16),
  //             child: Text(middleText,style: TextStyle(fontSize: 13,color: MyColor.content),textAlign: TextAlign.center,)
  //         ),
  //         ConfettiWidget(
  //           confettiController: controller,
  //           shouldLoop: false,
  //           blastDirectionality: BlastDirectionality.explosive,
  //           emissionFrequency: 0.0,
  //           numberOfParticles: 40,
  //           minBlastForce: 1,
  //           maxBlastForce: 30,
  //         ),
  //       ],
  //     ),
  //     buttons: [
  //       DialogButton(
  //           height: 30,
  //           width: 80,
  //           radius: BorderRadius.circular(12),
  //           gradient: MyColor.gradientPrimary,
  //           child: Text(
  //             textBtn,
  //             style: TextStyle(color: Colors.white, fontSize: 14),
  //           ),
  //           onPressed: (){
  //             StorageUtils.setFirstTimePopup(true);
  //             Get.back();
  //           }
  //       ),
  //     ],
  //   ).show();
  //   Future.delayed(Duration(milliseconds: 300),(){
  //     controller.play();
  //   });
  // }
  // void showAlertOke({
  //   Widget content,
  //   String middleText,
  //   String textBtn = "Đồng ý",
  //   void onClickOke(),
  // }) {
  //   Alert(
  //     closeIcon: Container(),
  //     context: Get.context,
  //     style: AlertStyle(
  //       backgroundColor: MyColor.background,
  //       titleStyle: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),
  //       descStyle: TextStyle(fontSize: 13,color: MyColor.content),
  //       descTextAlign: TextAlign.center,
  //       alertBorder: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(0.0),
  //         side: BorderSide(
  //           color: MyColor.background,
  //         ),
  //       ),
  //     ),
  //     title: "Thông báo",
  //     content: content != null
  //         ? content
  //         : Padding(
  //         padding: EdgeInsets.only(top: 16),
  //         child: Text(middleText,style: TextStyle(fontSize: 13,color: MyColor.content),textAlign: TextAlign.center,)
  //     ),
  //     buttons: [
  //       DialogButton(
  //         height: 30,
  //         width: content!=null ? 100 : 80,
  //         radius: BorderRadius.circular(12),
  //         gradient: MyColor.gradientPrimary,
  //         child: Text(
  //           textBtn,
  //           style: TextStyle(color: Colors.white, fontSize: 14),
  //         ),
  //         onPressed: () =>{Get.back(), onClickOke()},
  //       ),
  //     ],
  //   ).show();
  // }
  // void showDialogNormal({
  //   String title,
  //   String desc,
  //   Widget content,
  //   void onClickOke(),
  //   void onClickCancel(),
  //   String textCancel = "Huỷ",
  //   String textOk = "Tiếp tục",
  //   bool isShowCancelBtn = true,
  //   bool isBackClickOke = true,
  //   bool isReverse = false,
  // }) async{
  //   List<DialogButton> btns = [];
  //   if (isShowCancelBtn) {
  //     btns.add(DialogButton(
  //       height: 30,
  //       radius: BorderRadius.circular(24),
  //       child: Text(
  //         textCancel,
  //         style: TextStyle(color: Colors.white, fontSize: 14),
  //       ),
  //       onPressed: () =>
  //       {
  //         onClickCancel != null ? onClickCancel() : null,
  //         StorageUtils.setFirstTimePopup(true),
  //         Get.back(),
  //       },
  //       color: Colors.white.withOpacity(0.1),
  //     ));
  //   }
  //   btns.add(DialogButton(
  //     height: 30,
  //     radius: BorderRadius.circular(24),
  //     gradient: MyColor.gradientPrimary,
  //     child: Text(
  //       textOk,
  //       style: TextStyle(color: Colors.white, fontSize: 14),
  //     ),
  //     onPressed: () => {StorageUtils.setFirstTimePopup(true), isBackClickOke ? Get.back() : null, onClickOke()},
  //   ));
  //   if (isReverse) btns = btns.reversed.toList();
  //   bool isFirstTime = await StorageUtils.getFirstTimePopup();
  //   if(isFirstTime) {
  //     StorageUtils.setFirstTimePopup(false);
  //     Alert(
  //       onWillPopActive: true,
  //       closeIcon: Container(),
  //       context: Get.context,
  //       style: AlertStyle(
  //         backgroundColor: MyColor.background,
  //         titleStyle: TextStyle(
  //             fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
  //         descStyle: TextStyle(fontSize: 13, color: MyColor.content),
  //         descTextAlign: TextAlign.center,
  //         alertBorder: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(0.0),
  //           side: BorderSide(
  //             color: MyColor.background,
  //           ),
  //         ),
  //       ),
  //       title: title,
  //       desc: desc,
  //       content: content != null ?
  //       Container(
  //           padding: EdgeInsets.only(top: 16),
  //           child: content
  //       ) : Container(),
  //       buttons: btns,
  //     ).show();
  //   }
  // }
  // void showDialogUpdate({
  //   String title,
  // }) async{
  //   Alert(
  //     closeIcon: Container(),
  //     context: Get.context,
  //     style: AlertStyle(
  //       backgroundColor: MyColor.background,
  //       titleStyle: TextStyle(
  //           fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
  //       descStyle: TextStyle(fontSize: 13, color: MyColor.content),
  //       descTextAlign: TextAlign.center,
  //       alertBorder: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(0.0),
  //         side: BorderSide(
  //           color: MyColor.background,
  //         ),
  //       ),
  //     ),
  //     title: title,
  //     desc: "Đã có phiên bản mới. Bạn có muốn cập nhật không?",
  //     content: Container(),
  //     buttons: [
  //       DialogButton(
  //         height: 30,
  //         radius: BorderRadius.circular(24),
  //         child: Text(
  //           "Huỷ",
  //           style: TextStyle(color: Colors.white, fontSize: 14),
  //         ),
  //         onPressed: () =>
  //         {
  //           Get.back(),
  //         },
  //         color: Colors.white.withOpacity(0.1),
  //       ),
  //       DialogButton(
  //         height: 30,
  //         radius: BorderRadius.circular(24),
  //         gradient: MyColor.gradientPrimary,
  //         child: Text(
  //           "Đồng ý",
  //           style: TextStyle(color: Colors.white, fontSize: 14),
  //         ),
  //         onPressed: () => {openStore()},
  //       ),
  //     ],
  //   ).show();
  // }
  // void showDialogForceUpdate({
  //   String title,
  // }) async{
  //   Alert(
  //     closeIcon: Container(),
  //     context: Get.context,
  //     style: AlertStyle(
  //       backgroundColor: MyColor.background,
  //       titleStyle: TextStyle(
  //           fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
  //       descStyle: TextStyle(fontSize: 13, color: MyColor.content),
  //       descTextAlign: TextAlign.center,
  //       alertBorder: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(0.0),
  //         side: BorderSide(
  //           color: MyColor.background,
  //         ),
  //       ),
  //     ),
  //     title: title,
  //     desc: "Đã có phiên bản mới. Vui lòng cập nhật để tiếp tục sử dụng.",
  //     onWillPopActive: true,
  //     content: Container(),
  //     buttons: [
  //       DialogButton(
  //         height: 30,
  //         radius: BorderRadius.circular(24),
  //         gradient: MyColor.gradientPrimary,
  //         child: Text(
  //           "Đồng ý",
  //           style: TextStyle(color: Colors.white, fontSize: 14),
  //         ),
  //         onPressed: () => {openStore()},
  //       ),
  //     ],
  //   ).show();
  // }
  // void openStore(){
  //   if (Platform.isAndroid || Platform.isIOS) {
  //     final appId = Platform.isAndroid ? 'vn.celeb' : '1625808016';
  //     final url = Uri.parse(
  //       Platform.isAndroid
  //           ? "market://details?id=$appId"
  //           : "https://apps.apple.com/app/id$appId",
  //     );
  //     launchUrl(
  //       url,
  //       mode: LaunchMode.externalApplication,
  //     );
  //   }
  // }
  //
  // Future<void> showDialogIphone({
  //   String title,
  //   String desc,
  //   void onClickOke(),
  //   String textCancel = "Huỷ",
  //   String textOk = "Tiếp tục",
  // }) async {
  //   showCupertinoDialog(
  //     context: Get.context,
  //     builder: (BuildContext context) => CupertinoAlertDialog(
  //       title: Text(title),
  //       content: Padding(
  //         padding: const EdgeInsets.only(top: 8.0),
  //         child: Text(desc),
  //       ),
  //       actions: [
  //         CupertinoDialogAction(
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //           },
  //           isDefaultAction: true,
  //           isDestructiveAction: true,
  //           child: Text(textCancel, style: TextStyle(color: MyColor.content, fontSize: 15, fontWeight: FontWeight.normal)),
  //         ),
  //         CupertinoDialogAction(
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //             onClickOke();
  //           },
  //           isDefaultAction: true,
  //           child: GradientText(textOk, 15, gradient: MyColor.gradientPrimary,),
  //         ),
  //       ],
  //     ),
  //   ).whenComplete(() {});
  // }
  // void showDialogIphoneContent({
  //   String title,
  //   Widget content,
  //   void onClickOke(),
  //   String textCancel = "Huỷ",
  //   String textOk = "Tiếp tục",
  // }) {
  //   showCupertinoDialog(
  //     context: Get.context,
  //     builder: (BuildContext context) => CupertinoAlertDialog(
  //       title: Text(title),
  //       content: content,
  //       actions: [
  //         CupertinoDialogAction(
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //           },
  //           isDefaultAction: true,
  //           isDestructiveAction: true,
  //           child: Text(textCancel, style: TextStyle(color: MyColor.content, fontSize: 15, fontWeight: FontWeight.normal)),
  //         ),
  //         CupertinoDialogAction(
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //             onClickOke();
  //           },
  //           isDefaultAction: true,
  //           child: GradientText(textOk, 15, gradient: MyColor.gradientPrimary,),
  //         ),
  //       ],
  //     ),
  //   ).whenComplete(() {});
  // }
  // void showDialogIphoneOneOption({
  //   String title,
  //   Widget content,
  //   String textOk = "Xác nhận",
  // }) {
  //   showCupertinoDialog(
  //     context: Get.context,
  //     builder: (BuildContext context) => CupertinoAlertDialog(
  //       title: Text(title),
  //       content: content,
  //       actions: [
  //         CupertinoDialogAction(
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //           },
  //           isDefaultAction: true,
  //           child: GradientText(textOk, 15, gradient: MyColor.gradientPrimary),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  // void showDialogIphoneOneClick({
  //   String title,
  //   String content,
  //   String textOk = "Đồng ý",
  //   void onClickOke(),
  // }) {
  //   ConfettiController controller = new ConfettiController(duration: Duration(seconds: 1));
  //   showCupertinoDialog(
  //     context: Get.context,
  //     builder: (BuildContext context) => CupertinoAlertDialog(
  //       title: Text(title),
  //       content: Stack(
  //         alignment: Alignment.topCenter,
  //         children: [
  //           Padding(
  //               padding: EdgeInsets.only(top: 16),
  //               child: Text(content,style: TextStyle(fontSize: 13,color: MyColor.content),textAlign: TextAlign.center,)
  //           ),
  //           ConfettiWidget(
  //             confettiController: controller,
  //             shouldLoop: false,
  //             blastDirectionality: BlastDirectionality.explosive,
  //             emissionFrequency: 0.0,
  //             numberOfParticles: 40,
  //             minBlastForce: 1,
  //             maxBlastForce: 30,
  //           ),
  //         ],
  //       ),
  //       actions: [
  //         CupertinoDialogAction(
  //           onPressed: () {
  //             onClickOke();
  //           },
  //           isDefaultAction: true,
  //           child: GradientText(textOk, 15, gradient: MyColor.gradientPrimary),
  //         ),
  //       ],
  //     ),
  //   );
  //   Future.delayed(Duration(milliseconds: 300),(){
  //     controller.play();
  //   });
  // }
}
