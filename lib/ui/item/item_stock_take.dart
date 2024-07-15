import 'package:TTRFID/api/UIHelper.dart';
import 'package:TTRFID/utlis/mixin/log/LogUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../base/pageWidget/common_stateless_widget.dart';
import '../../bean/DataBean.dart';

class ItemStocktake extends CommonStatelessWidget {
  DataBean dataBean;

  ItemStocktake(this.dataBean, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
            UIHelper.startAsset(dataBean);
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(dataBean.title ?? ""),
                  SizedBox(height: 5),
                  Text("Progress：" + "${dataBean.content}"),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                child: Text(
                  "Download",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
