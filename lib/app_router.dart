import 'package:flutter/material.dart';
class AppRouter{
  Route generateRoute (RouteSettings settings){
   switch (settings.name){
     case '/':
       return MaterialPageRoute(builder: (_) => MovieList());
     case '/movie':
       var movieId = settings.arguments;
       return MaterialPageRoute(builder: (_) => MovieDetail(movieId: movieId));
     default:
       return MaterialPageRoute(builder: (_) => MovieList());
   }
  }
}