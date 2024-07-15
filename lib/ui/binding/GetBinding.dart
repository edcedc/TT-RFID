import 'package:TTRFID/ui/asset_detail/asset_detail_logic.dart';
import 'package:TTRFID/ui/asset_take/asnormal/asnormal_logic.dart';
import 'package:TTRFID/ui/asset_take/asset_take_logic.dart';
import 'package:TTRFID/ui/asset_take/found/found_logic.dart';
import 'package:TTRFID/ui/asset_take/full_list/full_list_logic.dart';
import 'package:TTRFID/ui/asset_take/missing/missing_logic.dart';
import 'package:TTRFID/ui/main/main_logic.dart';
import 'package:TTRFID/ui/settting/settting_logic.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../login/login_logic.dart';
import '../stock_take/stock_take_logic.dart';
import '../upload/upload_logic.dart';

class GetBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => LoginLogic(),fenix: true);
    Get.lazyPut(() => SetttingLogic(),fenix: true);
    Get.lazyPut(() => MainLogic(),fenix: true);
    Get.lazyPut(() => Stock_takeLogic(),fenix: true);
    Get.lazyPut(() => UploadLogic(),fenix: true);
    Get.lazyPut(() => Asset_takeLogic(),fenix: true);
    Get.lazyPut(() => Full_listLogic(),fenix: true);
    Get.lazyPut(() => FoundLogic(),fenix: true);
    Get.lazyPut(() => MissingLogic(),fenix: true);
    Get.lazyPut(() => AsnormalLogic(),fenix: true);
    Get.lazyPut(() => Asset_detailLogic(),fenix: true);
  }

}