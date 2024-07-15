import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'api/api_service.dart';
import 'mar/MyApplication.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initSDK();
  runApp(const MyApplication());
}

///初始化SDK
Future<void> initSDK() async {
  // SharedPreferences.setMockInitialValues({});
  await Injection().init();
}

///初始化注入对象
class Injection extends GetxService {
  Future<void> init() async {
    await Get.putAsync(() => SharedPreferences.getInstance());
    Get.lazyPut(() => ApiService(), fenix: true);
  }
}

