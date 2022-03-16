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
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage(
                  'https://www.oetker.es/Recipe/Recipes/oetker.es/es-es/gateaux/image-thumb__35524__RecipeDetailsLightBox/brownies-con-glaseado.jpg'),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
