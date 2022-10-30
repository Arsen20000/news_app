import 'package:news_app/models/article.dart';

class TopNews {
  const TopNews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<Article> articles;

  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
      status: json["status"],
      totalResults: json["totalResults"],
      articles: json["articles"],
    );
  }
}