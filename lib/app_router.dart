import 'package:flutter/material.dart';
import 'package:flutter_block/presentation/screens/characters_screen.dart';

import 'constants/strings.dart';
import 'presentation/screens/characters_details.dart';
class AppRouter{
  Route? generateRoute(RouteSettings settings){
   switch (settings.name){
     case characterScreen:
       return MaterialPageRoute(builder: (_) => const CharacterScreen());
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CharacterDetailsScreen());
   }
  }
}