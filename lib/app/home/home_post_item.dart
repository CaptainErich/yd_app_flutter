import 'package:flutter/material.dart';
import 'package:yd_app_flutter/models/home_post_item.dart';

class HomePostItem extends StatelessWidget {
  final Home_post_item? home_post_item;
  const HomePostItem({Key? key, this.home_post_item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              home_post_item?.title??"",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                height: 1.2,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${home_post_item?.price}${home_post_item?.priceunit}",
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
              "${home_post_item?.sexrestriction}${home_post_item?.term}",
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
            Icon(Icons.map),
            Text(
              "中国招商银行有限公司",
              style: TextStyle(
                // color: Colors.blue,
                fontSize: 12.0,
                height: 1.2,
              ),
            ),
            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                child: Text(
                  "立即报名",
                  style: TextStyle(
                    fontSize: 14.0,
                    height: 1.2,
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
