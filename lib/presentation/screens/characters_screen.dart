import 'package:flutter/material.dart';
import 'package:flutter_block/data/repositories/characters_repository.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen(CharactersRepository charactersRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: Text('Character Screen')),
    );
  }
}