
import 'package:sabak22_news_app2/model/source.dart';

class Article{
  Article(
    {required this.sourse, 
     this.autor, 
     required this.title,
     required this.description,
     required this.url, 
     this.urlToimage, 
     required this.publishedAt,
     required this.content});

 final Sourse sourse;
 final Stream? autor;
 final String title;
 final String description;
 final String url;
 final String? urlToimage;
 final String publishedAt;
 final String content;

 factory Article.jsondo(Map<String,dynamic> json) =>
 Article(
  sourse: Sourse.fromJson(json['sourse']), 
  title: json['title'], 
  description:json ['description'], 
  url:json ['url'], 
  publishedAt:json ['publishedAt'], 
  content:json ['content'],
  );

  

}