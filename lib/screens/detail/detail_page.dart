import 'package:flutter/material.dart';
import 'package:movies_app_with_json/constants/colors.dart';
import 'package:movies_app_with_json/models/movies.dart';
import 'package:movies_app_with_json/screens/detail/widgets/movie_cover.dart';
import 'package:movies_app_with_json/screens/detail/widgets/movie_review.dart';

import 'widgets/movie_detail.dart';

class DetailPage extends StatefulWidget {
  final Movies movies;
  const DetailPage({required this.movies, Key? key }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MovieCover(movies: widget.movies),
            MovieReview(movies: widget.movies),
            MovieDetail(movies: widget.movies),
          ],
        ),
      ),
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: (){
          Navigator.of(context).pop();
        }, 
        icon: const Icon(Icons.arrow_back_ios_outlined, color: AppColors.kFont,)
        ),
      actions: [
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.more_horiz_outlined, color: AppColors.kFont,)
          )
      ],
    );
  }