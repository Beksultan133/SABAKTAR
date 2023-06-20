

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak24_news_app4/components/detail_description.dart';
import 'package:sabak24_news_app4/components/detail_divider.dart';
import 'package:sabak24_news_app4/components/detail_site_botton.dart';
import 'package:sabak24_news_app4/components/detail_time_news.dart';
import 'package:sabak24_news_app4/components/detail_title.dart';
import 'package:sabak24_news_app4/model/article.dart';


class Detailview extends StatelessWidget {
  const Detailview({super.key, required this.article});
  final Article article;

  @override
   Widget build(BuildContext context) {
   final newsTime = DateFormat('d MMMM y H:m:s').format(
    DateTime.parse(article.publishedAt),
   );
    return Scaffold(
      appBar:
      AppBar( 
        backgroundColor: Colors.orange,
         actions: [IconButton(
          onPressed: (){}, 
           icon:const Icon(Icons.share), 
          ),
         ]
        ),
        body:
         Padding(
           padding: const EdgeInsets.all(10),
            child: Column(
              children: [     
         DetailTitle(article: article),
             const DetailDivider(),
         DetailTimeNews(newsTime: newsTime),
              const SizedBox(height: 10,),
         Image.network('${article.urlToImage}'),
              const SizedBox(height: 10,),
         DetailDescription(article: article),
             const SizedBox(height: 30,),
         const DetailSitebotton(),
            ],
           ),
         ),
       );  
    }
 }






