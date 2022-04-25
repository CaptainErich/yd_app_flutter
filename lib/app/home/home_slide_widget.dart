import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:yd_app_flutter/app/webview/Browser.dart';

class HomeSlideWidget extends StatelessWidget {
  const HomeSlideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List images = ["home_images/pin.png"];
    List<Image> images = [
      Image.network(
        "https://wanandroid.com/blogimgs/8690f5f9-733a-476a-8ad2-2468d043c2d4.png",
        fit: BoxFit.cover,
      ),
      Image.network(
          "https://www.wanandroid.com/blogimgs/62c1bd68-b5f3-4a3c-a649-7ca8c7dfabe6.png",
          fit: BoxFit.cover),
      Image.network(
          "https://www.wanandroid.com/blogimgs/50c115c2-cf6c-4802-aa7b-a4334de444cd.png",
          fit: BoxFit.cover),
      Image.network(
          "https://www.wanandroid.com/blogimgs/90c6cc12-742e-4c9f-b318-b912f163b8d0.png",
          fit: BoxFit.cover)
    ];

    return Container(
        height: 100,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Swiper(
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: images[index],
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
          itemCount: images.length,
          pagination: const SwiperPagination(builder: SwiperPagination.dots),
        ));
  }
}
