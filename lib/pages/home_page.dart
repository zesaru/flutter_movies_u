import 'package:flutter/material.dart';
import 'package:movies/providers/peliculas_provider.dart';
import 'package:movies/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Peliculas actuales'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _swipperTarjetas(),
          ],
        ),
      ),
    );
  }

  Widget _swipperTarjetas() {
    final peliculasProvider = new PeliculasProvider();
    peliculasProvider.getEnCines();
    return CardSwiper(
      peliculas: [1, 2, 3, 4, 5],
    );
  }
}
