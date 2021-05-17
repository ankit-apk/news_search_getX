import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsgetxnewsapi/controller/news_controller.dart';

class NewsView extends StatefulWidget {
  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  NewsController n = Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewsGetX'),
      ),
      body: Obx(
        () => n.isLoading.value
            ? Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : Container(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.network(n.newsList[index].urlToImage),
                        Text(n.newsList[index].title),
                        SizedBox(
                          height: 8,
                        ),
                        Text(n.newsList[index].description)
                      ],
                    ),
                  );
                }),
              ),
      ),
    );
  }
}
