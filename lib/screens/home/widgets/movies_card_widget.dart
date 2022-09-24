import 'package:flutter/material.dart';
import 'package:movies_app_with_json/models/movies.dart';

class MoviesCardWidget extends StatelessWidget {
  const MoviesCardWidget({  
    Key? key,
    required this.movieObject,
    required this.onPress,
  }) : super(key: key);

  final Movies movieObject;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(movieObject.movieImageUrl),
                    fit: BoxFit.cover
                    ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movieObject.movieName, 
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                  overflow: TextOverflow.clip,
                  ),
              ),
            ),
            //const SizedBox(height: 10,),
            Text(
              movieObject.movieYear.toString(), 
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
              ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

