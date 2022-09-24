import 'package:flutter/material.dart';
import 'package:movies_app_with_json/constants/constants.dart';
import 'package:movies_app_with_json/models/movies.dart';

class MovieReview extends StatelessWidget {
  final Movies movies;
  const MovieReview({required this.movies, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(movies.movieName, 
                  style: Constants().movieReviewMovieNameStyle,
                  overflow: TextOverflow.clip,
                  ),
                ),
                Text(movies.movieYear.toString(),
                  style: Constants().movieReviewMovieYearStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(movies.movieRating.toString(),
                  style: Constants().movieReviewMovieRatingStyle,
                ),
                const SizedBox(width: 10,),
                _buildStar()
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildStar() {
  final List<Color> colors = [
    Colors.amber,
    Colors.amber,
    Colors.amber,
    Colors.amber,
    Colors.grey.withOpacity(0.3),
  ];

  return Row(
    children: colors.map((color) => 
    Icon(Icons.star, size: 25, color: color,)).toList(),
  );
}