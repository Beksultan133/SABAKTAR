
import 'package:flutter/material.dart';
import 'package:sabak25_news_app5/components/home_news_card.dart';
import 'package:sabak25_news_app5/model/countres_domain.dart';
import 'package:sabak25_news_app5/model/top_news.dart';
import 'package:sabak25_news_app5/services/fetch_service.dart';
import 'package:sabak25_news_app5/them/app_colors.dart';
import 'package:sabak25_news_app5/them/app_text_styles.dart';
import 'package:sabak25_news_app5/them/text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}
 class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  Future <void> fetchNews([String? domain])async{
   topNews = null;
   setState(() {});
  topNews = await TopNewsRepo().fetchTopNews(domain);
  setState(() {});
  }
  @override
  void initState() { 
    super.initState();
  fetchNews();
   
  }
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
        backgroundColor:Appcolors.appBarcolors,
         title: 
         const Text(Apptext.agr,
        style:
           ViewTextStyle.appBartextSty),
          actions: [
           PopupMenuButton<Country>(
            onSelected: (Country item) async{
            await  fetchNews(item.domain);  
          },
          itemBuilder: (BuildContext context) {
          return countiesSet.map((e) =>
           PopupMenuItem<Country>(
            value: e, 
             child: Text(e.name))).toList();
         }
        ),  
      ], 
      ),
      body: 
      topNews == null ? const Center(child: CircularProgressIndicator())
      : ListView.builder(
        itemCount: topNews?.article.length,
        itemBuilder: (context ,index){
          final news = topNews!.article[index];
      return 
        CardNews(news: news);
      }
     ),
    );
  } 
 }


