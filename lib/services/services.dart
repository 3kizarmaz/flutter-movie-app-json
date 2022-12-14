import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movies_app_with_json/models/movies.dart';

class Services {


  Future<List<Movies>> readMoviesJson(BuildContext context) async {
    String jsonUrl = 'assets/data/moviesJson.json';

    String readString = await DefaultAssetBundle.of(context).loadString(jsonUrl);
    var jsonObject = jsonDecode(readString);

    List<Movies> allMovies = (jsonObject as List).map(
      (movieMap) => Movies.fromMap(movieMap)
      ).toList();
    
    return allMovies;
    
  }



}