import 'package:flutter/material.dart';
import 'package:sabak23_news_app3/constants/api_const.dart';
import 'package:sabak23_news_app3/model/top_news.dart';
import 'package:sabak23_news_app3/services/fetch_service.dart';
import 'package:sabak23_news_app3/them/app_text_styles.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}
 class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  Future <void> fetchNews()async{
  topNews = await TopNewsRepo().fetchTopNews();
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
        backgroundColor: const Color(0xffFE5722),
    title: 
        const Text('News Aggregator',
      style:
      ViewTextStyle.ffff),
      actions:const [ Icon(Icons.more_vert,
      color: Colors.white,
      
      )],

      
      ),
      body: 
      topNews == null ? const Center(child: CircularProgressIndicator())
      : ListView.builder(
        itemCount: topNews!.article.length,
        itemBuilder: (context ,index){
          final news = topNews!.article[index];
      return Card(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
            flex: 3,
              child: Image.network(news.urlToImage??  ApiConst.newsimages), ),
               Expanded(
              flex: 5,
              child:  Text(news.title)),
       
         ]
        ),
       );
      }
     ),
    );
  }
  
 }

