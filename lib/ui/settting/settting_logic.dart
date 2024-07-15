import 'package:get/get.dart';

import '../../api/api_service.dart';
import '../../base/controller/base_refresh_controller.dart';
import 'settting_state.dart';

class SetttingLogic extends BaseRefreshController<ApiService> {
  final SetttingState state = SetttingState();

  @override
  void onReady() {
    // showSuccess();
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
