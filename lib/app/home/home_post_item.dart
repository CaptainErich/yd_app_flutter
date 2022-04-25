import 'package:flutter/material.dart';

class HomePostItem extends StatelessWidget {
  const HomePostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "在家兼职 小任务",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                height: 1.2,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "16元/小时",
              style: TextStyle(
                color: Colors.red,
                fontSize: 18.0,
                height: 1.2,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "不限 长期招聘 男女不限",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 10.0,
                height: 1.2,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "不限 长期招聘 男女不限",
              style: TextStyle(
                // color: Colors.blue,
                fontSize: 12.0,
                height: 1.2,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
