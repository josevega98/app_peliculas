import 'package:flutter/material.dart';

class PosterTitle extends StatelessWidget {
  const PosterTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textheme = Theme.of(context).textTheme;
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(left: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://www.recetassinlactosa.com/wp-content/uploads/2015/09/Brownie-vertical-1.jpg'),
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text('Postre.Tile', style: textheme.headline5),
                Text('Sub Titulo', style: textheme.subtitle1),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border_outlined,
                      size: 25,
                      color: Colors.purple,
                    ),
                    Text('Calificacion por clientes', style: textheme.caption)
                  ],
                )
              ],
            )
          ],
        )
        );
  }
}
