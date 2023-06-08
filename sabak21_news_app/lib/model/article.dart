
import 'package:sabak21_news_app/model/source.dart';

class Article{
 final Sourse sourse;
 final Stream? autor;
 final String title;
 final String description;
 final String url;
 final String? urlToimage;
 final String publishedAt;
 final String content;

  Article(
    {required this.sourse, 
     this.autor, 
     required this.title,
     required this.description,
     required this.url, 
     this.urlToimage, 
     required this.publishedAt,
     required this.content});


}