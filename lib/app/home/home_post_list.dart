import 'package:flutter/material.dart';
import 'package:yd_app_flutter/app/home/home_post_item.dart';
import 'package:yd_app_flutter/models/home_post_item.dart';
import 'package:yd_app_flutter/models/models.dart';
import 'package:provider/provider.dart';

class HomePostList extends StatefulWidget {
  const HomePostList({Key? key}) : super(key: key);
  @override
  State<HomePostList> createState() => _HomePostListState();
}

class _HomePostListState extends State<HomePostList> {
  List<Home_post_item> dataList = [];

  Widget build(BuildContext context) {
    HomeModel homeModel = context.watch<HomeModel>();
    if (homeModel.done) {
      if (homeModel.models.data.joblist.length > 0) {
        dataList = homeModel.models.data.joblist.cast<Home_post_item>();
      }
    }
    if (dataList.isEmpty) {
      return Text("数据为空");
    } else {
      return Expanded(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: dataList.length,
          shrinkWrap: true,
          physics: new NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            print("-----$index");
            return HomePostItem(home_post_item: dataList[index]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.blue,
            );
          },
        ),
      );
    }
  }
}
