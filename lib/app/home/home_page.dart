import 'package:flutter/material.dart';
import 'package:yd_app_flutter/app/home/home_logowall_widget.dart';
import 'package:yd_app_flutter/app/home/home_post_widget.dart';
import 'package:yd_app_flutter/app/home/home_slide_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //导航栏
        title: Text("App Name"),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),
      body: ListView(
          children: <Widget>[
            HomeSlideWidget(),
            HomeLogoWallWidget(),
            HomePostWidget(),
          ]),
    );

  }
}
