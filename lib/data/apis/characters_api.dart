import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_block/constants/strings.dart';


class CharactersApis {
  final dio = Dio();

  CharactersApis() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(
        seconds: 2,
      ),
      receiveTimeout: const Duration(
        seconds: 2,
      ),
    );

    dio.options = options;
  }
  Future<List<dynamic>> getAllCharacters() async {
    try {
      final response = await dio.get('character');
      log(response.toString());
      return response.data;
      // final results = List<Map<String, dynamic>>.from(response.data['results']);
      // log(results.toString());
      // return results.map((character) => Character.fromJson(character)).toList();
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
