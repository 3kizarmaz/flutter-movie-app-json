import 'package:flutter/material.dart';
import 'package:movies_app_with_json/constants/constants.dart';
import 'package:movies_app_with_json/models/movies.dart';

class MovieDetail extends StatelessWidget {
  final Movies movies;
  const MovieDetail({required this.movies, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: movies.movieSummary,
                      style: Constants().movieDetailSummaryStyle
                    ),
                  ]
                ),
                ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}