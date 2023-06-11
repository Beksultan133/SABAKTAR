


import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:http/http.dart';
import 'package:sabak23_news_app3/constants/api_const.dart';
import 'package:sabak23_news_app3/model/top_news.dart';
 class TopNewsRepo{
 final http.Client client = http.Client();
 Future <TopNews?> fetchTopNews ()async{
  final Uri uri = Uri.parse(ApiConst.topNews);
  final Response response = await client.get(uri);
  if(response.statusCode == 200 || response.statusCode == 201){
   // print(response.body);
   // print(response.body.runtimeType);
    final data = jsonDecode(response.body);
  //  print(data.runtimeType);
    final topNews = TopNews.jsontop(data);
    print(topNews);
    return topNews;
    
  }
  return null;
  }
}



