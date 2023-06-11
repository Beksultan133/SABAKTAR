import 'package:sabak23_news_app3/model/article.dart';

class TopNews {
   TopNews(   
    { 
     required this.totalResults, 
     required this.articles,
      required this.status,
      });
     
  final String status;
  final int totalResults;
  final List <Article> articles;

 factory TopNews.jsontop(Map<String,dynamic>json) =>
 TopNews(
  status:json ['status'], 
  totalResults:json ['totalResults'], 
  articles: List <Article>.from(
    (json['articles']).map((e) => Article.jsondo(e))));

 

}


