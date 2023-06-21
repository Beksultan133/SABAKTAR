

import 'package:sabak25_news_app5/model/source.dart';

class Article{
  Article( 
    {required this.source, 
     this.autor, 
     required this.title,
     required this.description,
     required this.url, 
     required this.urlToImage, 
     required this.publishedAt,
     required this.content});

 final Source source;
 final Stream? autor;
 final String title;
 final String? description;
 final String url;
 final String? urlToImage;
 final String publishedAt;
 final String? content;

 factory Article.fromJson(Map<String,dynamic> json) =>
 Article(
  source: Source.fromJson(json['source']), 
  title: json['title'], 
  description:json ['description'], 
  url:json ['url'], 
  publishedAt:json ['publishedAt'], 
  content:json ['content'],
  urlToImage: json['urlToImage'],
  );

  

}