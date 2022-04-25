import 'package:flutter/material.dart';
import 'package:yd_app_flutter/app/home/home_post_item.dart';
import 'package:yd_app_flutter/app/home/home_post_list.dart';

class HomePostWidget extends StatelessWidget {
  const HomePostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 800,
        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "优选岗位",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    background: Paint()..color = Colors.yellow,
                  ),
                ),
              ],
            ),
            HomePostList(),
          ],
        ));
  }
}
