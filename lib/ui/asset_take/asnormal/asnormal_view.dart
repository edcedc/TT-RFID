import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../base/pageWidget/base_stateless_widget.dart';
import '../../item/item_asset.dart';
import 'asnormal_logic.dart';

class AsnormalPage extends BaseStatelessWidget<AsnormalLogic> {
  AsnormalPage({Key? key}) : super(key: key);

  final logic = Get.put(AsnormalLogic());

  @override
  String titleString() {
    return '';
  }

  @override
  Widget buildContent(BuildContext context) {
    return Obx(() => Container(
          color: Colors.white,
          // padding: EdgeInsets.all(10.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              // 每个 item 的上下内边距设置为10，左右内边距设置为10，确保上下不会重复加10
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                // 设置左右内边距
                child: Column(
                  children: [
                    ItemAsset(logic.dataList[index]),
                  ],
                ),
              );
            },
            itemCount: logic.dataList.length,
          ),
        ));
  }
}
