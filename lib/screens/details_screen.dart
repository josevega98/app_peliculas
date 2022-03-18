
import 'package:app_pelicula/widget/widget.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? movie = ModalRoute.of(context)?.settings.arguments. toString() ?? 'no movie';

    return Scaffold(

      body: CustomScrollView(

        slivers: [

          const CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const PosterTitle(),
              const TextodownScreen(),
          ]
          )
          ),
        ]
      )
    );
  }
}

