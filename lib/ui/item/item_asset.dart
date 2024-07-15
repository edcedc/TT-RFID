import 'package:TTRFID/api/UIHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../base/pageWidget/common_stateless_widget.dart';
import '../../bean/DataBean.dart';

class ItemAsset extends CommonStatelessWidget {
  DataBean dataBean;

  ItemAsset(this.dataBean, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0xFFF2F3F4), // 设置透明背景色
        child: InkWell(
          onTap: () {
              UIHelper.startAssetDetail(dataBean);
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: Image.asset(
                      'drawable/images/icon_1.png', // 替换为您的图片路径
                      width: 20, // 图片的宽度
                      height: 20, // 图片的高度
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(flex: 2, child: Text(dataBean.title ?? "")),
                        Expanded(flex: 8, child: Text(' | 充電用資產'))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(flex: 2, child: Text('Brand')),
                        Expanded(flex: 8, child: Text(' | 得力'))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(flex: 2, child: Text('Category')),
                        Expanded(flex: 8, child: Text(' | 电子'))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(flex: 2, child: Text('Location')),
                        Expanded(flex: 8, child: Text(' | 定位'))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(flex: 2, child: Text('EPC')),
                        Expanded(flex: 8, child: Text(' | 12315465161551'))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
