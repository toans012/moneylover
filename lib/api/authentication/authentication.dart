import 'package:clone_money_lover/pager/home/home_view.dart';
import 'package:clone_money_lover/pager/login%20/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../routes/route_name.dart';
import 'exception/signup_with_email_and_password_failure.dart';

class Authentication extends GetxController{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance ;

  late final Rx<User?> firebaseUser ;

  @override
  void onReady(){
    Future.delayed(Duration(seconds: 6));
    firebaseUser = Rx<User?>(_firebaseAuth.currentUser) ;
    firebaseUser.bindStream(_firebaseAuth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }
  _setInitialScreen(User? user) {
    user == null? Get.offAll(() => LoginView()) : Get.offAll(() => HomeView());
  }
  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(RouteName.homeView) : Get.offAll(RouteName.login);
    } on FirebaseAuthException catch(e){
      final ex = SignUpWithEmailAndPasswordFailure(e.code);
      print("FIREBASE AUTH EXCEPTION - ${ex.message}");
    } catch (_){
      final ex = SignUpWithEmailAndPasswordFailure();
      print("FIREBASE AUTH EXCEPTION - ${ex.message}");
      throw ex ;
    }
  }
  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
    } catch (_){}
  }
  Future<void> logOut () async => await _firebaseAuth.signOut();
}