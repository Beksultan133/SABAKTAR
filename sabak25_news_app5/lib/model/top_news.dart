import 'package:sabak25_news_app5/model/article.dart';

class TopNews {
   TopNews(   
    { 
     required this.totalResults, 
     required this.article,
      required this.status,
      });
     
  final String status;
  final int totalResults;
  final List <Article> article;

 factory TopNews.fromJson(Map<String,dynamic>json) =>
 TopNews(
  status:json ['status'], 
  totalResults:json ['totalResults'], 
  article: List <Article>.from(
    (json['articles']).map((e) => Article.fromJson(e))));

 

}


