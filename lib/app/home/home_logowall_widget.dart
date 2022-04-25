import 'package:flutter/material.dart';
import 'package:yd_app_flutter/app/home/hoem_logowall_item.dart';

class HomeLogoWallWidget extends StatelessWidget {
  const HomeLogoWallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width =  size.width - 20;
    return Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemExtent: width / 5, //强制高度为50.0
          shrinkWrap: true,
          physics: new NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return HomeLogoWallItem();
          }),
    );
  }
}
