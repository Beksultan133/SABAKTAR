import 'package:sabak21_news_app/model/article.dart';

class TopNews {
  final String ststus;
  final int totalResults;
  final Article article;

  TopNews(
    {required this.ststus, 
     required this.totalResults, 
     required this.article});

}


