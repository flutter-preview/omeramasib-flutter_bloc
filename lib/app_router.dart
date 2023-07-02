import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block/business_logic/cubit/characters_cubit.dart';
import 'package:flutter_block/data/repositories/characters_repository.dart';
import 'package:flutter_block/presentation/screens/characters_screen.dart';

import 'constants/strings.dart';
import 'data/apis/characters_api.dart';
import 'presentation/screens/characters_details.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository =
        CharactersRepository(charactersApis: CharactersApis());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>
                charactersCubit,
            child:  CharacterScreen(charactersRepository),
          ),
        );
      case characterDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharacterDetailsScreen());
    }
    return null;
  }
}
