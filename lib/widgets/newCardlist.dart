import 'package:flutter/material.dart';

import '../model/article.dart';


class NewsCard extends StatelessWidget {
  const NewsCard({Key? key, required this.article}) : super(key: key);
  final Article article;
  @override
  Widget build(BuildContext context) {

    return Card(

      elevation: 15,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network('${article.urlToImage}',
                fit: BoxFit.fill),
          ),
          SizedBox(
            height: 10,
          ),
          Text('${article.title}',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),),
          SizedBox(
            height: 10,
          ),
          Text('${article.description}',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),)
        ],
      ),
    );
  }
}
