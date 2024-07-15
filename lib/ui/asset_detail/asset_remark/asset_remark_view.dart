import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../base/pageWidget/base_stateless_widget.dart';
import 'asset_remark_logic.dart';

class AssetRemarkPage extends BaseStatelessWidget<AssetRemarkLogic> {
  AssetRemarkPage({Key? key}) : super(key: key);

  final logic = Get.put(AssetRemarkLogic());

  @override
  String titleString() {
    return '';
  }

  @override
  Widget buildContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Text('Status'),
                ),
                Text(
                  'In Library',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            color: Colors.grey,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Photo'),
                SizedBox(height: 20),
                Container(
                  color: Colors.white,
                  width: 80,
                  height: 80,
                  child: Image.asset('drawable/images/system_add.png',
                      height: 10, width: 10),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            color: Colors.grey,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Photo'),
                SizedBox(height: 20),
                Container(
                  color: Colors.white,
                  child: TextField(
                    minLines: 4,
                    maxLines: 4,// Allow multiline input
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Edit',
                    ),
                    onChanged: (text) {},
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {

              },
              child: Text('SAVE'),
            ),
          ),
          Expanded(child: Text(''))
        ],
      ),
    );
  }
}
