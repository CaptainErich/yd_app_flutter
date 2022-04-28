import 'package:flutter/material.dart';
import 'package:yd_app_flutter/app/home/home_logowall_widget.dart';
import 'package:yd_app_flutter/app/home/home_post_widget.dart';
import 'package:yd_app_flutter/app/home/home_slide_widget.dart';
import 'package:dio/dio.dart';
import 'package:yd_app_flutter/models/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Dio _dio = Dio();

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
      body: RefreshIndicator(
        onRefresh: () {
          _onRefresh();
          return Future.value();
        },
        child: ListView(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          HomeSlideWidget(),
          HomeLogoWallWidget(),
          HomePostWidget(),
        ]),
      ),
    );
  }

  Future<void> _onRefresh() async {
    try {
      Response response;
      response = await _dio.get("https://api.shunhaitec.com/api/Page/LX_FX");
      var homeModel = Models.fromJson(response.data);
      print(homeModel.message);
      setState(() {
      });

    }catch (e){
      print('异常信息:$e');
    }
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {});
    });
  }

}
