import 'package:flutter/material.dart';
import 'package:yd_app_flutter/app/home/home_post_item.dart';
import 'package:dio/dio.dart';

class HomePostList extends StatefulWidget {
  const HomePostList({Key? key}) : super(key: key);
  @override
  State<HomePostList> createState() => _HomePostListState();
}

class _HomePostListState extends State<HomePostList> {
  Dio _dio = Dio();

  Widget build(BuildContext context) {
    request();

    return Container(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 15,
          itemExtent: 100,
          shrinkWrap: true,
          physics: new NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return HomePostItem();
          }),
    );
  }

  void request() async {
    Response response;
    response = await _dio.get("http://api.shunhaitec.com/api/Page/LX_FX");
    // print(response.data.toString());
  }
}
