import 'package:get/get.dart';

import '../../api/api_service.dart';
import '../../base/controller/base_refresh_controller.dart';
import '../../bean/BaseResponseBean.dart';
import '../../utlis/mixin/log/LogUtils.dart';
import 'login_state.dart';

class LoginLogic extends BaseRefreshController<ApiService> {
  final LoginState state = LoginState();

  /// 定义了该变量为响应式变量，当该变量数值变化时，页面的刷新方法将自动刷新
  var count = 0.obs;
  /// 自增方法
  void increase() => ++count;

  @override
  void onReady() {
    super.onReady();
    showSuccess();
    loadNet();
  }

  @override
  void loadNet() {
    /*httpRequest<BaseResponseBean>(api.queryCategoryData("", ""), (value) {
      LogUtils.e(value.msg!);
    });*/
  }

}
