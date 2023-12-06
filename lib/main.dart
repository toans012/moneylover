import 'package:clone_money_lover/routes/route_manager.dart';
import 'package:clone_money_lover/routes/route_name.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'api/authentication/authentication.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:  const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,widget)=>
            GetMaterialApp(
              theme: ThemeData.dark(),
              builder: (context,widget){
                ScreenUtil.init(context);
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: widget!
                );
              },
              debugShowCheckedModeBanner: false,
              initialRoute: RouteName.homeView,
              getPages: ListPage.page(),
            )
    );



  }
}

