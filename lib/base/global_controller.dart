import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class GlobalController extends GetxController {
  RxBool notificationPodcast = false.obs;
  // Rx<UserData> userData = UserData().obs;
  RxBool isLogin = false.obs;
  @override
  void onInit() {
    super.onInit();
    // userData.value = StorageUtils.getUser()??null;
    // isLogin.value = StorageUtils.getLoginStatus() ?? false;
  }
  void saveUserData(){
    // userData.refresh();
    // StorageUtils.saveUser(userData.value);
  }

}