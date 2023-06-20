import 'package:flutter/material.dart';
import 'package:sabak24_news_app4/model/article.dart';
import 'package:sabak24_news_app4/them/app_text_styles.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(article.title,textAlign: TextAlign.center,
    style: ViewTextStyle.desStyle,);
  }
}