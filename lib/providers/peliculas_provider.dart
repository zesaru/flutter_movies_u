import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:movies/models/pelicula_model.dart';

class PeliculasProvider {
  String _apikey = '4d22b6beed3cf5acfff824bd5e57db60';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Pelicula>> getEnCines() async {
    //creando la URL
    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apikey,
      'language': _language,
    });

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    return peliculas.items;
  }
}
