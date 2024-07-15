import 'package:TTRFID/api/UIHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../base/pageWidget/base_stateless_widget.dart';
import 'login_logic.dart';

class LoginPage extends BaseStatelessWidget<LoginLogic> {
  LoginPage({Key? key}) : super(key: key);

  final logic = Get.put(LoginLogic());
  final state = Get.find<LoginLogic>().state;

  @override
  String titleString() {
    return " ";
  }

  @override
  bool showBackButton() {
    return false;
  }

  @override
  List<Widget>? appBarActionWidget(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            UIHelper.startSetting();
          },
          icon: const Icon(Icons.settings))
    ];
  }

  @override
  Widget buildContent(BuildContext context) {
    String account = '';
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          padding: EdgeInsets.all(16), // 可以根据需要调整 padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // 内部的 Column 也需要设置为 crossAxisAlignment.start
            children: [
              Image.asset('drawable/images/logo_original.jpg',
                  height: 80, width: 50),
              SizedBox(height: 8), // 间距可以根据需要调整
              Text(
                'Tsung Tsin FAM',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12), // 设置左右内间距为12
                decoration: BoxDecoration(
                  color: Color(0xFFF2F3F4),
                  border: Border.all(color: Color(0xFFBCBDC0)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Username', border: InputBorder.none),
                  onChanged: (text) {
                    account = text;
                  },
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12), // 设置左右内间距为12
                decoration: BoxDecoration(
                  color: Color(0xFFF2F3F4),
                  border: Border.all(color: Color(0xFFBCBDC0)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Passcode', border: InputBorder.none),
                  onChanged: (text) {
                    account = text;
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          width: double.infinity, // 设置Container宽度为父容器宽度
          child: ElevatedButton(
            onPressed: () {
              UIHelper.startMain();
            },
            child: Text('Confirm'),
          ),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(left: 16, bottom: 16), // 设置左边距和底边距
          child: Align(
            alignment: Alignment.bottomLeft, // 确保文本左对齐并显示在底部
            child: Text('V:1.1.1'),
          ),
        ))
      ],
    );
  }
}
