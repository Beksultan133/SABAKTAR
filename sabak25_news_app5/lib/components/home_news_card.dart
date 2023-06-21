
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sabak25_news_app5/constants/api_const.dart';
import 'package:sabak25_news_app5/model/article.dart';
import 'package:sabak25_news_app5/them/app_colors.dart';
import 'package:sabak25_news_app5/them/app_text_styles.dart';
import 'package:sabak25_news_app5/them/sized.dart';
import 'package:sabak25_news_app5/view/detail_view.dart';

class CardNews extends StatelessWidget {
  const CardNews({
    super.key,
    required this.news,
  });

  final Article news;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      Navigator.push(context, 
       MaterialPageRoute(builder: (context)=>  Detailview(article:news),
       ),
      );
    },
    child: Card( 
      color:Appcolors.cardcolors,
      child: Row(
        children: [
          Expanded(
          flex: 3,
            child: 
            CachedNetworkImage(
    imageUrl:news.urlToImage ?? ApiConst.newsimages,
    placeholder: (context, url) =>  Center(child:Image.network(ApiConst.newsimages)),
    errorWidget: (context, url, error) => Image.network(ApiConst.newsimages),
     ),
            //Image.network(news.urlToImage??  ApiConst.newsimages),
            ),
             Sized.width8,
             Expanded(
            flex: 5,
            child:  Text(news.title,style:
             ViewTextStyle.fdStyle,),
        ),
       ]
      ),
     ),
    );
  }
}

