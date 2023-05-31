import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/character_model.dart';
import '../../data/repositories/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<Character> characters = [];
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    charactersRepository.getAllCharacters().then(
      (characters) {
        emit(
          CharactersLoaded(characters: characters),
        );
        characters = characters;
      },
    );
    return characters;
  }
}
