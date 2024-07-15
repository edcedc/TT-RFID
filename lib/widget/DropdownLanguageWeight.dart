import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class DropdownLanguageWeight extends StatefulWidget {
  const DropdownLanguageWeight({super.key});

  // final ValueChanged<Int> onIndexChanged;

  @override
  State<DropdownLanguageWeight> createState() => _DropdownLanguageWeightState();
}


class _DropdownLanguageWeightState extends State<DropdownLanguageWeight> {

  int languageIndex = 0;

  @override
  void initState() {
    super.initState();
    // languageIndex = SharedUtils().getLanguage() as int;
  }

  // 定义一个回调函数
  @override
  Widget build(BuildContext context) {
    // const la = ['简体', '繁體', 'English'];
    const la = ['All', 'SubCat1', 'SubCat2', 'SubCat3', 'SubCat4', 'SubCat5'];
    return Container(
      child: SizedBox(
          width: 90.0,
          height: 35.0,
          child: DropdownButtonFormField<String>(
            isExpanded: true,
            iconSize: 20,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 5, right: 5),
                border: OutlineInputBorder(gapPadding: 1),
                labelText: ''),
            // 设置默认值
            value: la[languageIndex],
            // 选择回调
            onChanged: (value) {
              int index = la.indexOf(value!); // 获取选定元素的索引值
              var locale = Locale('en', 'US');
              switch (index) {
                case 0:
                  locale = Locale('zh', 'CN');
                case 1:
                  locale = Locale('zh_HK', 'HK');
                case 2:
                  locale = Locale('en', 'US');
              }
              Get.updateLocale(locale);
              
            },
            // 传入可选的数组
            items: la.map((text) {
              return DropdownMenuItem(
                  value: text,
                  child: Center(
                    child: Text(text, style: TextStyle(fontSize: 15)),
                  ));
            }).toList(),
          )),
    );
  }
}
