import 'package:flutter/material.dart';
import 'package:news_task/models/news.dart';
import 'package:news_task/side_drawer.dart';
import 'package:news_task/static_articles.dart';
import 'article_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        drawer: SideDrawer(),
        body: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: Articles.articlesList.length,
          itemBuilder: (context, index) {
            return buildListItem(context, Articles.articlesList[index]);
          },
        ));
  }

  Widget buildListItem(BuildContext context, News article) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(article.title,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  decoration: TextDecoration.underline)),
        ),
      ),
      onTap: () => openArticleScreen(context, article),
    );
  }

  void openArticleScreen(context, article) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ArticleScreen(
                  article: article,
                )));
  }
}
