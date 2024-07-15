import 'package:TTRFID/ui/asset_detail/asset_text/asset_text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../api/api_service.dart';
import '../../base/controller/base_refresh_controller.dart';
import '../../bean/DataBean.dart';
import 'asset_remark/asset_remark_view.dart';

class Asset_detailLogic extends BaseRefreshController<ApiService> {

  final RxString title = '12'.obs;

  final List<Widget> naviItems = [
    AssetTextPage(),
    AssetRemarkPage(),
  ];

  List<Tab> barItemBar = [
    Tab(text: 'DETAIL'),
    Tab(text: 'REMARK'),
  ];

  @override
  void onReady() {
    DataBean bean = Get.arguments;
    title.value = bean.title!;
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
