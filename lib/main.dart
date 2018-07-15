import 'package:flutter/material.dart';
import 'contacts.dart';
import 'login.dart';
import 'user.dart';
import 'utils/keys.dart' as keys;

void main() => runApp(MyApplication()); //整个应用的入口

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "social-vertex-flutter", home: new MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var stage = 0;
  var context;

  @override
  Widget build(BuildContext context) {
    this.context=context;
    switch (stage) {
      case keys.user:
        return getUserCenter(this); //用户中心界面
      case keys.contacts:
        return getContactsList(this); //联系人界面
      default:
        return login(this); //登录界面
    }
  }

  void updateUi(int stage) {
    //通知Flutter框架更新子Widget状态
    setState(() {
      this.stage = stage;
    });
  }
  }
