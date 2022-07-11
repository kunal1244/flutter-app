import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:main_app/models/movie-page.dart';

class MovieInfo extends StatefulWidget{
  const MovieInfo({Key? key}) : super(key: key);

  @override
  State<MovieInfo> createState() => _MovieInfoState();
}

class _MovieInfoState extends State<MovieInfo> {
  final String uri = "https://imdb-api.com/en/API/Title/k_z5z5n54h/tt0108052";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final response = await http.get(Uri.parse(uri));
    var movieData = jsonDecode(response.body);
    MovieData.movies = MoviePage.fromMap(movieData);
    print(MovieData.movies?.title);
    //setState(() {});
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: MovieData.movies?.title,
              style: TextStyle(fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                  text: '\n ${MovieData.movies?.year} | ${MovieData.movies?.runtimeStr} | ${MovieData.movies?.contentRating}',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ]
            ),
          ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 200,
                      child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Image.network(
              MovieData.movies!.image,
              fit: BoxFit.cover,
            ),
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.all(8.0),
          ),
                    )
                  ],
                )
              ],
            ),


          ],
        )
      ),
    );
  }
}