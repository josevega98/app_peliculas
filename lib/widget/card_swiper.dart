import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      //color: Colors.red,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.TINDER,
        itemWidth: size.width * 0.9,
        itemHeight: size.height * 0.3,
        pagination: const SwiperPagination(),
        itemBuilder: (BuildContext context, int index) {

          return GestureDetector(
            onTap:  () => Navigator.pushNamed(context, 'deatils', arguments: 'movie'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://i.blogs.es/942f78/spider-man-3-tom-holland_8m76/1366_2000.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          );

        },
      ),
    );
  }
}
