import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 260,
      //color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Populares',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 6,),
          _MoviePoster()

        ],
      ),
    );
  }
}


class _MoviePoster extends StatelessWidget {
  const _MoviePoster({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            width: 130,
            height: 200,
            //color: Colors.green,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            
            child: Column(
              children: [
                
                GestureDetector(
                  onTap:  () => Navigator.pushNamed(context, 'deatils', arguments: 'movie'),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'), 
                    image: NetworkImage('https://via.placeholder.com/300x400'),
                    width: 130,
                    height: 190,
                    fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 6,),

                //TODO BORRAR TEXTO
                const Text(
                  'Texto alternativo',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}




