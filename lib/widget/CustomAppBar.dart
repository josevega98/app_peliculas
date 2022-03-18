import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,

      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black45,
          child: const Text(
            'Postre.title',
            style: TextStyle(fontSize: 16),),
          ),
        background: const FadeInImage(
          placeholder:  AssetImage('assets/loading.gif'),
          image:  NetworkImage('https://hips.hearstapps.com/hmg-prod/images/brownie-1612442334.jpg'),
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}
