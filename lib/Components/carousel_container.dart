import 'package:flutter/material.dart';
import 'package:yomari/constants.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselContainer extends StatelessWidget {
  const CarouselContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Carousel(
        images: [
          NetworkImage(
              'https://9to5google.com/wp-content/uploads/sites/4/2020/09/google-pixel-5-cover2.jpg?quality=82&strip=all'),
          NetworkImage('https://i.ytimg.com/vi/5ic7qC5uMtE/maxresdefault.jpg'),
          NetworkImage(
              'https://images-eu.ssl-images-amazon.com/images/G/31/img20/Wireless/OnePlus/8series/April19/02_OP8Pro_desktopnew._CB1587323251_.png'),
          NetworkImage(
              'https://www.hotspotstore.com/img/note%2020%20banner.jpg'),
        ],
        dotSize: 4,
        dotSpacing: 15.0,
        dotColor: kSecondaryColor,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        borderRadius: true,
      ),
    );
  }
}
