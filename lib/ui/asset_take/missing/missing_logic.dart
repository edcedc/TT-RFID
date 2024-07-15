import 'package:get/get.dart';

import '../../../api/api_service.dart';
import '../../../base/controller/base_refresh_controller.dart';
import '../../../bean/DataBean.dart';

class MissingLogic extends BaseRefreshController<ApiService> {
  RxList<DataBean> dataList = <DataBean>[].obs;

  @override
  void onReady() {
    for (int i = 0; i <= 1; i++) {
      DataBean bean = DataBean();
      bean.title = "00000" + "$i";
      bean.content = "$i" + "/123";
      dataList.add(bean);
    }
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
