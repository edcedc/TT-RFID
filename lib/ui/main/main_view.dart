import 'package:TTRFID/ui/settting/settting_state.dart';
import 'package:TTRFID/ui/stock_take/stock_take_view.dart';
import 'package:TTRFID/ui/upload/upload_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../base/pageWidget/base_stateless_widget.dart';
import '../../res/colors.dart';
import '../../widget/keep_alive_wrapper.dart';
import 'main_logic.dart';

class MainPage extends BaseStatelessWidget<MainLogic> {
  MainPage({Key? key}) : super(key: key);

  final logic = Get.put(MainLogic());
  final state = Get.find<MainLogic>().state;

  @override
  String titleString() {
    return 'Stock Take';
  }

  @override
  bool showDrawer() {
    return true;
  }

  @override
  Widget buildContent(BuildContext context) {
    return Obx(() => WillPopScope(
        child: Scaffold(
          body: KeepAliveWrapper(
            child: PageView(
              controller: logic.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: logic.naviItems,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 8.0,
            type: BottomNavigationBarType.fixed,
            currentIndex: logic.curPage.value,
            items: logic.barItemBar,
            fixedColor: ColorStyle.color_EA4C43,
            onTap: (int index) {
              logic.pageController.jumpToPage(index);
              logic.curPage.value = index;
            },
          ),
        ),
        onWillPop: () async {
          if (logic.lastPopTime == null ||
              DateTime.now().difference(logic.lastPopTime!) >
                  const Duration(seconds: 2)) {
            // 存储当前按下back键的时间
            logic.lastPopTime = DateTime.now();
            // toast
            showToast("再按一次退出app");
            return false;
          } else {
            logic.lastPopTime = DateTime.now();
            // 退出app
            await SystemNavigator.pop();
            return true;
          }
        }));
  }

}
