import 'package:flutter/material.dart';
import 'package:yd_app_flutter/models/banner_model.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeLogoWallItem extends StatelessWidget {
  final Banner_model? banner_model;
  const HomeLogoWallItem({Key? key, this.banner_model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(10),
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.network(
            banner_model?.logourl??"",
            fit: BoxFit.cover,
            width: 45,
          ),
          Spacer(),
          AutoSizeText(
            banner_model?.title??"",
            maxLines: 1,
          ),
        ]
        ),
      );

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
