import 'package:flutter/material.dart';
import 'package:yd_app_flutter/app/home/hoem_logowall_item.dart';
import 'package:yd_app_flutter/models/banner_model.dart';
import 'package:yd_app_flutter/models/index.dart';
import 'package:provider/provider.dart';

class HomeLogoWallWidget extends StatelessWidget {
  const HomeLogoWallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    List<Banner_model> dataList = [];

    HomeModel homeModel = context.watch<HomeModel>();
    if (homeModel.done) {
      if (homeModel.models.data.banner.length > 0) {
        dataList = homeModel.models.data.banner;
      }
    }

    return Container(
      height: 100,
      // padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemExtent: width / 5,
          shrinkWrap: true,
          physics: new NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            Banner_model model = dataList[index];
            return HomeLogoWallItem(
              banner_model: dataList[index],
            );
          }),
    );
  }
}
