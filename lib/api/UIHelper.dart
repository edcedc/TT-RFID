import 'package:TTRFID/bean/DataBean.dart';
import 'package:TTRFID/ui/asset_detail/asset_detail_view.dart';
import 'package:TTRFID/ui/asset_take/asset_take_view.dart';
import 'package:TTRFID/ui/login/login_logic.dart';
import 'package:TTRFID/ui/main/main_view.dart';
import 'package:TTRFID/ui/start_page.dart';
import 'package:get/get.dart';

import '../ui/login/login_view.dart';
import '../ui/settting/settting_view.dart';





class UIHelper{

  //登录
  static void startLogin(){
      Get.offAllNamed(_login);
  }

  //启动
  static void startMain(){
      Get.offAllNamed(_main);
  }

  //设置
  static void startSetting(){
      Get.toNamed(_setting);
  }

  //资产盘点
  static void startAsset(DataBean bean){
      Get.toNamed(_asset, arguments: bean);
  }

  //资产盘点详情
  static void startAssetDetail(DataBean bean){
      Get.toNamed(_asset_detail, arguments: bean);
  }

  static const String _main = '/main';
  static const String _login = '/login';
  static const String _start = '/start';
  static const String _setting = '/setting';
  static const String _asset = '/asset';
  static const String _asset_detail = '/asset_detail';

  static List<GetPage> getPages = [
    GetPage(name: _start, page: () => StartPage()),
    GetPage(name: _login, page: () => LoginPage(), transition: Transition.rightToLeftWithFade),
    GetPage(name: _setting, page: () => SetttingPage(), transition: Transition.rightToLeftWithFade),
    GetPage(name: _main, page: () => MainPage(), transition: Transition.rightToLeftWithFade),
    GetPage(name: _asset, page: () => AssetTakePage(), transition: Transition.rightToLeftWithFade),
    GetPage(name: _asset_detail, page: () => AssetDetailPage(), transition: Transition.rightToLeftWithFade),
  ];

  static void closePage(){
    Get.back();
  }

}