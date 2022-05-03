import 'package:flutter/material.dart';
import 'package:yd_app_flutter/app/home/home_post_item.dart';

class HomePostList extends StatefulWidget {
  const HomePostList({Key? key}) : super(key: key);
  @override
  State<HomePostList> createState() => _HomePostListState();
}

class _HomePostListState extends State<HomePostList> {

  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: 25,
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          print("-----$index");
          return HomePostItem();
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
