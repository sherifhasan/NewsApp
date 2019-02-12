import 'package:flutter/material.dart';
import 'package:news_task/models/news.dart';

class ArticleScreen extends StatelessWidget {
  final News article;

  ArticleScreen({this.article});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Card(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              article.title,
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Text(
              article.body,
              style: TextStyle(fontSize: 15),
            ),
          ],
        )));
  }
}
