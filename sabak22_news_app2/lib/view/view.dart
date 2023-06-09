import 'package:flutter/material.dart';
import 'package:sabak22_news_app2/services/fetch_service.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}
 class _HomeViewState extends State<HomeView> {
  @override
  void initState() { 
    super.initState();
   TopNewsRepo().fetchTopNews();
   setState(() {
     
   });
  }
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFE5722),
    title: const Center(child: Text('NEWS '),
       ),
      ),
    );
  }
}