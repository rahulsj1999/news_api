import 'dart:convert';

import 'package:http/http.dart';
import '../model/article.dart';

class ApiService{
  final endPoint="https://newsapi.org/v2/everything?q=tesla&from=2022-07-05&sortBy=publishedAt&apiKey=9dec7eb13b8a4e74bf24ecee2b1d8d89";

  Future<List<Article>> getArticle() async{
    Response response = await get(Uri.parse(endPoint));
    if(response.statusCode==200){
      Map<String, dynamic> json=jsonDecode(response.body);
      List<dynamic> body=json['articles'];
      List<Article> articles=body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;


    }else{
      throw('Data has error');
    }

}
}