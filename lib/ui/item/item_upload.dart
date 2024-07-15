import 'package:TTRFID/utlis/mixin/log/LogUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../base/pageWidget/common_stateless_widget.dart';
import '../../bean/DataBean.dart';

class ItemUpload extends CommonStatelessWidget {
  DataBean dataBean;

  ItemUpload(this.dataBean, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, // 设置透明背景色
      child: InkWell(
        onTap: () {
          // 处理点击事件，例如跳转到详情页
          print('Item tapped: ${dataBean.title}');
        },
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                // color: Color(0xFFE0E0E0),
                child: Text('Stock Take'),
              ),
              SizedBox(height: 5),
              Container(
                child: Row(
                  children: [
                    Expanded(child: Text(dataBean.title ?? "")),
                    Text('Upload', style: TextStyle(
                      color: Theme.of(context).primaryColor
                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
