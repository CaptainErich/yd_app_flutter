import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:yd_app_flutter/app/webview/Browser.dart';
import 'package:provider/provider.dart';
import 'package:yd_app_flutter/models/banner_model.dart';
import 'package:yd_app_flutter/models/index.dart';

class HomeSlideWidget extends StatelessWidget {
  const HomeSlideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List images = ["home_images/pin.png"];
    List<Banner_model> dataList = [];

    HomeModel homeModel = context.watch<HomeModel>();
    if (homeModel.done) {
      if (homeModel.models.data.banner.length > 0) {
        dataList = homeModel.models.data.banner;
      }
    } else {
      return Container(
        height: 100,
        child: Text(
          "占位",
          textAlign: TextAlign.center,
        ),
      );
    }

    return Container(
        height: 100,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Swiper(
          itemBuilder: (context, index) {
            Banner_model model = dataList[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                model.imgurl,
                fit: BoxFit.cover,
              ),
            );
          },
          onTap: (index) {
            Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
              return new Browser(
                url: "https://flutter-io.cn/",
                title: "Flutter 中文社区",
              );
            }));
          },
          indicatorLayout: PageIndicatorLayout.COLOR,
          autoplay: true,
          itemCount: dataList.length,
          pagination: const SwiperPagination(builder: SwiperPagination.dots),
        ));
  }
}
