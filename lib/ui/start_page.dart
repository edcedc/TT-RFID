import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:TTRFID/api/UIHelper.dart';
import 'package:TTRFID/base/BaseState.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import '../utlis/PermissionHelper.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends BaseState<StartPage> {

  @override
  void initState() {
    super.initState();
    setPermissions();
  }

  @override
  Widget onCread(BuildContext context) {
    return Scaffold();
  }

  void setPermissions() {
    List<Permission> permissions = [
      Permission.storage,
      Permission.camera
    ];
    PermissionHelper.check(permissions,
        onSuccess: ()  {
          UIHelper.startLogin();
        }, onFailed: () {
          setPermissions();
        }, onOpenSetting: () {
          // logger.e('onOpenSetting');
          openAppSettings();
        });
  }
}
