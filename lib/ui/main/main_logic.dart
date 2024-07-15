import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../api/api_service.dart';
import '../../base/controller/base_refresh_controller.dart';
import '../stock_take/stock_take_view.dart';
import '../upload/upload_view.dart';

class MainLogic extends BaseRefreshController<ApiService> {

  final RxString title = ''.obs;
  DateTime? lastPopTime;
  final RxInt curPage = 0.obs;
  final PageController pageController = PageController(initialPage: 0);

  final List<Widget> naviItems = [
    Stock_takePage(),
    UploadPage(),
  ];

  List<BottomNavigationBarItem> barItemBar = [
    BottomNavigationBarItem(label: 'Stock Take', icon: Icon(Icons.wifi)),
    BottomNavigationBarItem(label: 'Upload', icon: Icon(Icons.upload)),
  ];

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
