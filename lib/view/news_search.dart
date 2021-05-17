import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsgetxnewsapi/view/news_view.dart';

class NewsSearch extends StatefulWidget {
  String category;
  NewsSearch({this.category});
  @override
  _NewsSearchState createState() => _NewsSearchState();
}

class _NewsSearchState extends State<NewsSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewsGetX'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/news.png'),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.blue, // set border color
                      width: 3.0), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Articles', border: InputBorder.none),
                  onChanged: (newValue) {
                    setState(() {
                      widget.category = newValue;
                    });
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(NewsView(), arguments: widget.category);
                  },
                  child: Icon(Icons.search))
            ],
          ),
        ),
      ),
    );
  }
}
