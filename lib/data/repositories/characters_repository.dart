import '../apis/characters_api.dart';
import '../models/character_model.dart';

class CharactersRepository {
  final CharactersApis charactersApis;

  CharactersRepository(
    {required this.charactersApis}
    );

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersApis.getAllCharacters();
    return characters.map((character) => Character.fromJson(character)).toList();
  }
}