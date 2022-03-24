import 'article_model.dart';

class ResponseArticleModel {
  List<ArticleModel>? article;

  ResponseArticleModel({required this.article});

  ResponseArticleModel.fromJson(Map<String, dynamic> json) {
    final tempArticle = json['article'] as List;

    article = tempArticle.map((e) => ArticleModel.fromJson(e)).toList();
  }
}
