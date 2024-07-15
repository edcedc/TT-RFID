import 'package:TTRFID/utlis/mixin/log/LogUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/pageWidget/base_stateless_widget.dart';
import '../../widget/DropdownLanguageWeight.dart';
import 'asset_take_logic.dart';

class AssetTakePage extends BaseStatelessWidget<Asset_takeLogic> {
  AssetTakePage({Key? key}) : super(key: key);

  final logic = Get.put(Asset_takeLogic());

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
    return Container(
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(5),
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          isCollapsed: true,
                          hintText: 'Seach'),
                      onChanged: (text) {},
                    )),
                    Image.asset(
                      'drawable/images/system_search.png',
                      height: 25,
                      width: 25,
                    )
                  ],
                ),
              )),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'drawable/images/system_qr_code.png',
                height: 25,
                width: 25,
              )
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(child: DropdownLanguageWeight()),
                SizedBox(width: 10),
                Expanded(child: DropdownLanguageWeight())
              ],
            )),
        Expanded(child: DefaultTabController(
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
        )),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(children: [
            Expanded(child: ElevatedButton(
              onPressed: () {

              },
              child: Text('START'),
            )),
            SizedBox(width: 10),
            Expanded(child: ElevatedButton(
              onPressed: () {

              },
              child: Text('SAVE'),
            )),
          ],),
        )
      ],
    ));
  }
}
