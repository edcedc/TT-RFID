import 'package:TTRFID/bean/DataBean.dart';
import 'package:TTRFID/ui/asset_take/asnormal/asnormal_view.dart';
import 'package:TTRFID/ui/asset_take/found/found_view.dart';
import 'package:TTRFID/ui/asset_take/full_list/full_list_view.dart';
import 'package:TTRFID/ui/asset_take/missing/missing_logic.dart';
import 'package:TTRFID/ui/asset_take/missing/missing_view.dart';
import 'package:TTRFID/utlis/mixin/log/LogUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../api/api_service.dart';
import '../../base/controller/base_refresh_controller.dart';
import '../stock_take/stock_take_view.dart';
import '../upload/upload_view.dart';

class Asset_takeLogic extends BaseRefreshController<ApiService> {

  final RxString title = '12'.obs;

  final List<Widget> naviItems = [
    Full_listPage(),
    FoundPage(),
    MissingPage(),
    AsnormalPage(),
  ];

  final List<String> tabTitles = ['FULL LIST', 'FOUND', 'MISSING', 'ASNORMAL'];

  List<Tab> barItemBar = [
    Tab(text: 'FULL LIST'),
    Tab(text: 'FOUND'),
    Tab(text: 'MISSING'),
    Tab(text: 'ASNORMAL'),
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
