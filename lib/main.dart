import 'package:app_pelicula/screens/details_screen.dart';
import 'package:app_pelicula/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
      'home': (_) => HomeScreen(), 
      'deatils': (_) => DetailsScreen()},
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.brown,
        )
      ),
    );
  }
}
