import 'package:flutter/material.dart';
import 'package:sabak25_news_app5/them/app_text_styles.dart';

class DetailTimeNews extends StatelessWidget {
  const DetailTimeNews({
    super.key,
    required this.newsTime,
  });

  final String newsTime;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const Icon(Icons.access_time_outlined),
      const SizedBox(width: 10,),
      
      Text(newsTime,
      style: ViewTextStyle.fdStyle,)
    ],);
  }
}
