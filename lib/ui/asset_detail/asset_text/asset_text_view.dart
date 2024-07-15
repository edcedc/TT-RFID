import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../base/pageWidget/base_stateful_widget.dart';
import '../../../base/pageWidget/base_stateless_widget.dart';
import '../../../base/pageWidget/common_stateful_widget.dart';
import 'asset_text_logic.dart';

class AssetTextPage extends CommonStatefulWidget {

  final logic = Get.put(AssetTextLogic());

  @override
  State<StatefulWidget> createState() {
    return _AssetTextPage();
  }

}

class _AssetTextPage extends State<AssetTextPage> {

  bool _isVisible = true; // Track the visibility state
  bool _isVisible1 = true; // Track the visibility state

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Material(
            color: Color(0xFFD6D6D6),
            child: InkWell(
              onTap: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text('Asset Information'),
                    ),
                    _isVisible ? Text('-') : Text('+'),
                  ],
                ),
              ),
            ),
          ),
          _isVisible ? Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Text('Asset No')),
                  Text('SPOT/U/001/2')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
              Row(
                children: [
                  Expanded(child: Text('Asset Name')),
                  Text('充数用资产')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
              Row(
                children: [
                  Expanded(child: Text('Status')),
                  Text('Instock/Manually')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
              Row(
                children: [
                  Expanded(child: Text('Brand')),
                  Text('')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
              Row(
                children: [
                  Expanded(child: Text('Model')),
                  Text('')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
              Row(
                children: [
                  Expanded(child: Text('Serial No.')),
                  Text('')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
              Row(
                children: [
                  Expanded(child: Text('Unit')),
                  Text('')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
              Row(
                children: [
                  Expanded(child: Text('Category')),
                  Text('SubCat1')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
              Row(
                children: [
                  Expanded(child: Text('Location')),
                  Text('Rm206')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
              Row(
                children: [
                  Expanded(child: Text('Last Stock Date')),
                  Text('2024-07-08 16:18:10')
                ],
              ),
            ],
          ): SizedBox(),
          SizedBox(height: 5),
          Material(
            color: Color(0xFFD6D6D6),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isVisible1 = !_isVisible1;
                });
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text('Tag Information'),
                    ),
                    _isVisible1 ? Text('-') : Text('+'),
                  ],
                ),
              ),
            ),
          ),
          _isVisible1 ? Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Text('Barcode')),
                  Text('')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
              Row(
                children: [
                  Expanded(child: Text('EPC')),
                  Text('231231211545445')
                ],
              ),
              Divider(height: 10,thickness: 1,color: Colors.black,),
            ],
          ): SizedBox(),
        ],
      ),
    );
  }

}
