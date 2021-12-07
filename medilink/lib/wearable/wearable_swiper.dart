import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:medilink/primary.dart';
import 'package:url_launcher/url_launcher.dart';

final List<String> imgList = [

  'images/swiper5.jpg',
  'images/swiper6.jpg'
];
final List<String> imgListURL = [

  'https://www.samsung.com/sec/watches/all-watches/',
  'https://www.apple.com/kr/watch/?afid=p238%7Csn1kR6A9u-dc_mtid_18707vxu38484_pcrid_555917331096_pgrid_125171223596_&cid=aos-kr-kwgo-watch--slid---product--'
];

class WearableSwiper extends StatelessWidget {
  const WearableSwiper({Key? key}) : super(key: key);

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
