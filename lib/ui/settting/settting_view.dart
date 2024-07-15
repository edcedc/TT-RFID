import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/pageWidget/base_stateless_widget.dart';
import 'settting_logic.dart';

class SetttingPage extends BaseStatelessWidget<SetttingLogic> {
  SetttingPage({Key? key}) : super(key: key);

  final logic = Get.put(SetttingLogic());
  final state = Get.find<SetttingLogic>().state;

  @override
  String titleString() {
    return "Settting";
  }

  @override
  bool showBackButton() {
    return true;
  }

  @override
  Widget buildContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 40,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  color: Color(0xFFffffff),
                  child: Center(
                    child: Text('HOST'),
                  ),
                ),
                SizedBox(width: 2),
                Expanded(
                  child: Container(
                    color: Color(0xFFffffff),
                    child: TextField(
                      controller: TextEditingController(text: 'https://cn.bing.com/'),
                      decoration: InputDecoration(
                        hintText: 'Passcode',
                        border: InputBorder.none,
                      ),
                      onChanged: (text) {
                        // Handle onChanged callback
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Text('')),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // 处理按钮点击事件
              },
              child: Text('SAVE'),
            ),
          )
        ],
      ),
    );
  }
}
