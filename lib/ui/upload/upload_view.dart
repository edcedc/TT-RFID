import 'package:TTRFID/ui/item/item_upload.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/pageWidget/base_stateless_widget.dart';
import '../item/item_stock_take.dart';
import 'upload_logic.dart';

class UploadPage extends BaseStatelessWidget<UploadLogic> {
  UploadPage({Key? key}) : super(key: key);

  final logic = Get.put(UploadLogic());
  final state = Get.find<UploadLogic>().state;


  @override
  String titleString() {
    // TODO: implement titleString
    return '';
  }

  @override
  Widget buildContent(BuildContext context) {
    return Obx(() => ListView.builder(
      itemBuilder: (context, index) {
        // 每个 item 的上下内边距设置为10，左右内边距设置为10，确保上下不会重复加10
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10), // 设置左右内边距
          child: Column(
            children: [
              SizedBox(height: 10), // 每个 item 的顶部间距
              ItemUpload(logic.dataList[index]),
              Divider(height: 0.5, color: Colors.grey), // 分割线
            ],
          ),
        );
      },
      itemCount: logic.dataList.length,
    ));
  }

}
