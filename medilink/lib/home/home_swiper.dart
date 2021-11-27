import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:medilink/primary.dart';
import 'package:url_launcher/url_launcher.dart';

final List<String> imgList = [
  'images/swiper1.jpg',
  'images/swiper2.jpg',
  'images/swiper3.jpg',
];
final List<String> imgListURL = [
  'https://www.youtube.com/watch?v=f5xFRwmSjoY&t=1s',
  'https://www.youtube.com/watch?v=yDu0IFgNmNM',
  'http://www.mohw.go.kr/react/index.jsp',
];

class HomeSwiper extends StatelessWidget {
  const HomeSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      pagination: new SwiperPagination(
        builder: new DotSwiperPaginationBuilder(
          activeColor:color1,

        )
      ),
      itemCount: imgList.length,
      autoplay: true,
      autoplayDelay: 3000,
      itemBuilder: (BuildContext context, int index){
        return GestureDetector(
          child: Image.asset(imgList[index]),
          onTap: ()=>launch(imgListURL[index],forceWebView: false)
        );


      },

    );
  }
}
