import 'package:app_pelicula/widget/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
        centerTitle: true,
        
        actions: [
          IconButton(
          onPressed: () {
          
          },
           icon: const Icon(Icons.search_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
      
            // tarjetas slider
             CardSwiper(),
      
             //Movie Slider
             MovieSlider(),
             MovieSlider(),
             MovieSlider(),
             MovieSlider(),
             MovieSlider()
      
      
          ],
        ),
      )
    );
  }
}
