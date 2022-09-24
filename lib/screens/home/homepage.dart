import 'package:flutter/material.dart';
import 'package:movies_app_with_json/models/movies.dart';
import 'package:movies_app_with_json/screens/detail/detail_page.dart';
import 'package:movies_app_with_json/screens/home/widgets/movies_card_widget.dart';
import 'package:movies_app_with_json/services/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<List<Movies>> (
          future: Services().readMoviesJson(context),
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              List<Movies> movieList = snapshot.data!;

              return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3.3,
                    ), 
                    itemCount: movieList.length,
                    itemBuilder: (context, index) {
                      Movies movieObject = movieList[index];

                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: MoviesCardWidget(
                          movieObject: movieObject, 
                          onPress: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => DetailPage(movies: movieObject)
                              ),
                              );
                          }
                          ),
                      );
                    }
                    );
            } else if(snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()),);
            }else {
              return const CircularProgressIndicator();
            }
          },
          )
        ),
    );
  }
}