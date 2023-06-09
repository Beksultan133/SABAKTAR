
// ignore_for_file: unused_local_variable

import 'package:http/http.dart'as http;
import 'package:http/http.dart';
import 'package:sabak22_news_app2/constants/api_const.dart';
class TopNewsRepo{
 final http.Client client = http.Client();
 Future <void> fetchTopNews ()async{
  final Uri uri = Uri.parse(ApiConst.topNews);
  final Response response = await client.get(uri);
  if(response.statusCode == 200 || response.statusCode == 201){
    print(response.body);
  }
  }
}