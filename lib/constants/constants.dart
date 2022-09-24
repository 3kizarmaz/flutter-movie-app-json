import 'package:flutter/cupertino.dart';
import 'package:movies_app_with_json/constants/colors.dart';

class Constants {

  final TextStyle movieDetailSummaryStyle = const TextStyle(
    color: AppColors.kMoviePrimaryTextColor,
    fontSize: 16,
    height: 1.8
  );

  final TextStyle movieReviewMovieNameStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
    color: AppColors.kFont,
  );

  final TextStyle movieReviewMovieYearStyle = const TextStyle(
    fontSize: 20,
    color: AppColors.kMoviePrimaryTextColor
  );

  final TextStyle movieReviewMovieRatingStyle = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: AppColors.kMoviePrimaryTextColor
  );

}