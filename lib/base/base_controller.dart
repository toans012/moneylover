import 'package:get/get.dart';
import '../api/base_repository.dart';
import 'global_controller.dart';

class BaseController<T extends BaseRepository> extends GetxController
    // with BaseCommonWidgets
    // , Utilities
{
  // LoadingPage loadingPage = LoadingPage.loading;
  T get api => Get.find<T>();
  late GlobalController globalCtl;
  @override
  void onInit() {
    // globalCtl = Get.find<GlobalController>();
    super.onInit();
  }

  void onRefresh() {}

  void onLoadMore() {}


}


