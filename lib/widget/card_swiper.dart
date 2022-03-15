import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      color: Colors.red,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.2,
        itemHeight: size.height * 0.2,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
        itemBuilder: (BuildContext context, int index) {
          return const Image(
            image: NetworkImage('https//via.placeholder.com/300x400')
            );
        },
      ),
    );
  }
}
