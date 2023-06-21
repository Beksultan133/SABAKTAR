import 'package:flutter/material.dart';
import 'package:sabak25_news_app5/model/article.dart';
import 'package:url_launcher/url_launcher.dart';


class DetailSitebotton extends StatelessWidget {
  const DetailSitebotton({
    super.key, required this.article,
  });
 final Article article;

  @override
  Widget build(BuildContext context) {
    
final Uri url = Uri.parse(article.url);
    return SizedBox(
      height: 50,
      width: 200,
      child: MaterialButton( 
        onPressed: ()async{
         if (!await launchUrl(url)) {
    throw Exception('Could not launch $url'); 
        }
        },
      color: Colors.orange,
      child:  const Text('SITE',
      style: TextStyle(
        fontSize: 20,
         fontWeight: FontWeight.w600),),),
    );
  }
}
