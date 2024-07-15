import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/pageWidget/base_stateless_widget.dart';
import 'asset_detail_logic.dart';

class AssetDetailPage extends BaseStatelessWidget<Asset_detailLogic> {

  AssetDetailPage({Key? key}) : super(key: key);

  final logic = Get.put(Asset_detailLogic());

  @override
  bool showBackButton() {
    return true;
  }

  @override
  Widget? titleWidget() {
    return Obx(() => Text(logic.title.value));
  }

  @override
  Widget buildContent(BuildContext context) {
    return DefaultTabController(
      length: logic.barItemBar.length,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            TabBar(
              tabs: logic.barItemBar,
              indicatorColor: Theme.of(context).primaryColor, // 选中指示器的颜色
              labelColor: Colors.black, // 选中标签的文本颜色
              unselectedLabelColor: Colors.grey, // 未选中标签的文本颜色
              indicatorWeight: 2.0,
              labelStyle: TextStyle(fontSize: 12),// 选中指示器的粗细
            ),
            Expanded(
              child: TabBarView(
                children: logic.naviItems,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
