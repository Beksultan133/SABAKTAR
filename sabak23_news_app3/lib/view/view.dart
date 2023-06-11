import 'package:flutter/material.dart';
import 'package:sabak23_news_app3/constants/api_const.dart';
import 'package:sabak23_news_app3/model/top_news.dart';
import 'package:sabak23_news_app3/services/fetch_service.dart';
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
     const Center(child: Text('news'),
       ),
      ),
      body: topNews == null ? const Center(child: CircularProgressIndicator()) 
      : ListView.builder(
        itemCount: topNews!.articles.length,
        itemBuilder: (context ,index){
          final news = topNews!.articles[index];
      return Card(
        color: Colors.grey,
        child: Row(children: [
        Image.network(news.urlToimage??  ApiConst.newsimages),
        Text(news.title)]
        ),
       );
      }
     ),
    );
  }
  
 }

