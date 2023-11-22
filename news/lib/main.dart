import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_service.dart';
import 'package:news/widgets/bottom_navigation_bar.dart';
import 'package:news/widgets/loading_screen.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articleSportsList =
        await NewsService(Dio()).getTopHeadlines(category: 'sports');
    articleHealthList =
        await NewsService(Dio()).getTopHeadlines(category: 'health');
    articleScienceList =
        await NewsService(Dio()).getTopHeadlines(category: 'sceince');
    articleSportsList =
        await NewsService(Dio()).getTopHeadlines(category: 'technology');
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample(),
    );
  }
}
