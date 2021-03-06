import 'dart:convert';

import '../models/article_model.dart';

import 'package:http/http.dart' as http;

class ApiNews {
  final url =
      'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=23c30098b82a42828f2036b9fe9e0ec3';

  Future<List<ArticleModel>> getNews() async {
    final response = await http.get(Uri.parse(url));

    try {
      if (response.statusCode == 200) {
        final decodeJson = jsonDecode(response.body);

        final articlesList = decodeJson['articles'] as List;
        return articlesList.map((e) => ArticleModel.fromJson(e)).toList();
      }
      return [];
    } catch (e) {
      throw Exception(e);
    }
  }
}
