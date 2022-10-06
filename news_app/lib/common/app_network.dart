import 'package:dio/dio.dart';
import 'package:news_app/news/article_response.dart';
import 'package:news_app/users/source_response.dart';

class AppNetwork {
  final Dio _dio = Dio();

  Future<ArticleResponse> fetchArticle() async {
    final response = await _dio.get(
        "https://newsapi.org/v2/top-headlines?country=id&apiKey=0c8a7f1adb5149cfad81a74666ec25f7");
    if (response.statusCode == 200) {
      final result = ArticleResponse.fromJson(response.data);
      return result;
    } else {
      throw Exception('Failed to load data.');
    }
  }

  Future<SourceResponse> fetchSource() async {
    final response = await _dio.get(
        "https://newsapi.org/v2/top-headlines/sources?apiKey=0c8a7f1adb5149cfad81a74666ec25f7");

    if (response.statusCode == 200) {
      final result = SourceResponse.fromJson(response.data);
      return result;
    } else {
      throw Exception('Failed to load data.');
    }
  }
}
