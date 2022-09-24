import 'package:flutter/material.dart';
import 'package:movies_app_with_json/models/movies.dart';

class MovieCover extends StatelessWidget {
  final Movies movies;
  const MovieCover({required this.movies, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(movies.movieImageUrl)
          ),
      ),
    );
  }
}