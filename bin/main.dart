import 'repositories/api_news.dart';

void main(List<String> arguments) {
  // final apiMovie = RepositoryApi();
  final apiNews = ApiNews();

  apiNews.getNews();
}
