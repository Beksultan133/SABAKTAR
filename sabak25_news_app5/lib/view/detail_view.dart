
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak25_news_app5/components/detail_description.dart';
import 'package:sabak25_news_app5/components/detail_divider.dart';
import 'package:sabak25_news_app5/components/detail_site_botton.dart';
import 'package:sabak25_news_app5/components/detail_time_news.dart';
import 'package:sabak25_news_app5/components/detail_title.dart';
import 'package:sabak25_news_app5/constants/api_const.dart';
import 'package:sabak25_news_app5/model/article.dart';
import 'package:sabak25_news_app5/them/app_colors.dart';
import 'package:share_plus/share_plus.dart';


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
        backgroundColor:Appcolors.detAppbarcolors,
         actions:
          [IconButton(
          onPressed: (){
          Share.share(article.url);  
          }, 
           icon:const Icon(Icons.share), 
          ),
         ]
        ),
        body:
         Padding(
           padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [     
                     DetailTitle(article: article),
               const DetailDivider(),
                     DetailTimeNews(newsTime: newsTime),
                const SizedBox(height: 10,),
                 CachedNetworkImage(
        imageUrl:article.urlToImage.toString(),
        placeholder: (context, url) =>  Center(child:  Image.network(ApiConst.newsimages)),
        errorWidget: (context, url, error) => Image.network(ApiConst.newsimages),
                  ),
               // Image.network('${article.urlToImage}',),
                const SizedBox(height: 10,),
                     DetailDescription(article: article),
               const SizedBox(height: 70,),
                      DetailSitebotton(article: article,),
              ],
            ),
          ),
       ),
    );  
  }
 }






