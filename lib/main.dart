import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/about.dart';
import 'utils/routes.dart';
import 'pages/movie_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.aboutRoute: (context) => About(),
        MyRoutes.movieInfoRoute: (conext) => MovieInfo(),
      },
    );
  }
}
