import 'package:flutter/material.dart';
import 'package:newsgetxnewsapi/view/news_search.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: NewsSearch(),
    );
  }
}
