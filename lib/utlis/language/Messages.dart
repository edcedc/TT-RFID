import 'package:get/get_navigation/src/root/internacionalization.dart';

class Globalization {
  static const String english = "English";
  static const String china_cn = "简体";
  static const String china_hk = "繁體";

  static const String login = "登录123";

}

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "en_US": {
      Globalization.login: "Login",
    },
    "zh_CN": {
      Globalization.login: "登录",
    },
    "zh_HK": {
      Globalization.login: "登入",
    },
  };
}

