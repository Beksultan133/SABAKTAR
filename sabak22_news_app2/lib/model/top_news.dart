import 'package:sabak22_news_app2/model/article.dart';

class TopNews {
   TopNews(
    {required this.ststus, 
     required this.totalResults, 
     required this.article});
     
  final String ststus;
  final int totalResults;
  final List <Article> article;

 factory TopNews.jsontop(Map<String,dynamic>json) =>
 TopNews(
  ststus:json ['ststus'], 
  totalResults:json ['totalResults'], 
  article: List <Article> .from(
    (json['articles']).map((e) => Article.jsondo(e))));

}


