import 'package:flutter/material.dart';

class TextodownScreen extends StatelessWidget {
  const TextodownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Column(
            children: [
              Text('Puedes Elegir \n 4 Toppings', style: textheme.headline5, textAlign: TextAlign.justify,),
              Text('Todo personalizado', style: textheme.subtitle1),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.star_border_outlined,
                    size: 25,
                    color: Colors.purple,
                  ),
                  Text('Calificacion por clientes', style: textheme.caption),
                ],
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage(
                  'https://annaspasteleria.com/images/_imageBlock/DSC_4689websqqq.jpg'),
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
