import 'package:flutter/cupertino.dart';
import 'package:get/get_instance/src/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'base_controller.dart';

abstract class BaseViewModel<T extends BaseController> extends StatelessWidget {
  // const BaseViewModel({})

  final dynamic tag = null;

  T get controller => GetInstance().find<T>(tag: tag);

  @override
  Widget build(BuildContext context){
    return Obx(()=>vmBuilder(context));
  }

  Widget vmBuilder(BuildContext context);
}



