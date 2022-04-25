import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = ["images/phone.png"];
    // List images = ["https://lmg.jj20.com/up/allimg/1114/113020142315/201130142315-2-1200.jpg"];
    
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Container(
        height: 90,
        child: Swiper(
          itemBuilder: (context, index) {
            final image = images[index];
            return Image.asset(
              image,
              fit: BoxFit.fill,
              width: 90,
              height: 90,
            );
          },
          pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              color: Colors.cyan,
              activeColor: Colors.blueAccent,
            ),
          ),
          autoplay: true,
          itemCount: images.length,
          control: const SwiperControl(),
        ),
      ),
    );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   List tabs = ["新闻", "历史", "图片"];
  //   return DefaultTabController(
  //     length: tabs.length,
  //     child: Scaffold(
  //         appBar: AppBar(
  //           title: Text("App Name"),
  //           bottom: TabBar(
  //             tabs: tabs.map((e) => Tab(text: e)).toList(),
  //           ),
  //         ),
  //         body: TabBarView(
  //           children: tabs.map((e) {
  //             return KeepAliveWrapper(
  //                 child: Container(
  //                   alignment: Alignment.center,
  //                   child: Text(e, textScaleFactor: 5),
  //                 )
  //             );
  //           }).toList(),
  //         )),
  //   );

    // return Container(
    //
    //     child: ListView.separated(
    //   itemCount: 100,
    //   // itemExtent: 50.0, //强制高度为50.0
    //   itemBuilder: (BuildContext context, int index) {
    //     return ListTile(title: Text("$index"));
    //   },
    //   //分割器构造器
    //   separatorBuilder: (BuildContext context, int index) {
    //     return Divider(color: Colors.black, height: 1.0);
    //   },
    // ));
//   }
// }