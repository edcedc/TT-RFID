import 'package:TTRFID/bean/DataBean.dart';
import 'package:TTRFID/utlis/mixin/log/LogUtils.dart';
import 'package:get/get.dart';

import '../../api/api_service.dart';
import '../../base/controller/base_refresh_controller.dart';

class Stock_takeLogic extends BaseRefreshController<ApiService> {

  RxList<DataBean> dataList = <DataBean>[].obs;

  @override
  void onReady() {
    super.onReady();
    for (int i = 1; i <= 100; i++) {
      DataBean bean = DataBean();
      bean.title = "00000" + "$i";
      bean.content = "$i" + "/123";
      dataList.add(bean);
    }
    LogUtils.e("${dataList.length}");
  }

  @override
  void onClose() {
    super.onClose();
  }
}
