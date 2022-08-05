import 'package:flutter/material.dart';
import 'package:news_api/model/article.dart';
import 'package:news_api/widgets/newCardlist.dart';

class NewDescription extends StatelessWidget {
  final Article article;
  const NewDescription({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail News'),
      ),
      body: NewsCard(article: article),
    );
  }
}
