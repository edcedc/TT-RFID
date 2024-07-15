
import 'package:TTRFID/utlis/mixin/log/LogUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utlis/mixin/toast/toast_mixin.dart';
import '../../widget/load_state_widget.dart';
import '../../widget/loading_widget.dart';
import '../controller/base_controller.dart';

///常用页面无状态page封装，基本依赖Controller+OBX实现原有State+StatefulWidget效果
abstract class BaseStatelessWidget<T extends BaseController> extends GetView<T>
    with ToastMixin {
  const BaseStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F4),
      resizeToAvoidBottomInset: false,
      appBar: _createAppBar(context),
      body: _buildBody(context),
      endDrawer: showDrawer() ? createDrawer(context) : null,
    );
  }

  ///AppBar生成逻辑
  AppBar? _createAppBar(BuildContext context) {
    if (titleString().isNotEmpty) {
      return createAppBar(
          titleString(), showBackButton(), appBarActionWidget(context),
          titleWidget: titleWidget());
    } else {
      return null;
    }
  }

  ///构建侧边栏内容
  Widget createDrawer(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(color: Theme.of(context).primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('drawable/images/logo_original.jpg',
                        height: 80, width: 50),
                    SizedBox(width: 10),
                    Text('Asset Management System', style: TextStyle(
                        fontStyle: FontStyle.normal,color: Colors.white
                    ),)
                  ],
                ),
              ),
              Container(
                width: double.infinity, // Width stretches to fill the entire screen
                child: TextButton(
                  onPressed: () {
                    LogUtils.e('message');
                  },
                  child: Text('Stock Take'),
                ),
              ),
              Divider(
                thickness: 0,
                color: Colors.grey,  // Customize divider color if needed
                height: 0,         // Default height, can be omitted (or use SizedBox)
              ),
              Container(
                width: double.infinity, // Width stretches to fill the entire screen
                child: TextButton(
                  onPressed: () {
                    LogUtils.e('message');
                  },
                  child: Text('Upload'),
                ),
              ),
              Divider(
                thickness: 0,
                color: Colors.grey,  // Customize divider color if needed
                height: 0,         // Default height, can be omitted (or use SizedBox)
              ),
              Container(
                width: double.infinity, // Width stretches to fill the entire screen
                child: TextButton(
                  onPressed: () {
                    LogUtils.e('message');
                  },
                  child: Text('Logout'),
                ),
              ),
              Divider(
                thickness: 0,
                color: Colors.grey,  // Customize divider color if needed
                height: 0,         // Default height, can be omitted (or use SizedBox)
              ),
              SizedBox(height: 10),
              Text('nike@SPIT', style: TextStyle(fontSize: 10, color: Colors.grey),),
              Expanded(child: Text('')),
              Container(
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // 设置内边距
                child: Text(
                  "202409091234",
                  textAlign: TextAlign.left,  // 文本居中显示
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  ///创建AppBar ActionView
  List<Widget>? appBarActionWidget(BuildContext context) {}

  ///构建Scaffold-body主体内容
  Widget _buildBody(BuildContext context) {
    if (useLoadSir()) {
      return controller.obx((state) => buildContent(context),
          onLoading: Center(
            child: LoadingWidget(),
          ),
          onError: (error) => createErroWidget(controller, error),
          onEmpty: createEmptyWidget(controller));
    } else {
      return buildContent(context);
    }
  }

  ///是否展示titleBar标题栏
  bool showTitleBar() => true;

  ///侧边栏
  bool showDrawer() => false;

  ///页面标题设置
  String titleString() => "标题";

  ///标题栏title的Widget
  Widget? titleWidget() {}

  ///是否开启加载状态
  bool useLoadSir() => false;

  ///是否展示回退按钮
  bool showBackButton() => false;

  ///showSuccess展示成功的布局
  Widget buildContent(BuildContext context);
}
