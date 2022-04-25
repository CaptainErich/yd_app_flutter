import 'package:flutter/material.dart';

class HomeLogoWallItem extends StatelessWidget {
  const HomeLogoWallItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center, children: [
        Icon(Icons.icecream_outlined,
          size: 50,),
        Spacer(),
        Text(" hello"),
      ]
      ),
    );
  }
}
