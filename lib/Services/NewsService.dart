import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class getNewsServices {
  final Dio dio;
  getNewsServices(this.dio);
   Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_52930eb0339810fff334dafd164eda6137c53&country=eg&language=ar&category=$category');
      Map<String,dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['results'];

      List<ArticleModel> allarticles =[];
      for (var article in articles)
        {
          ArticleModel articleModel =
          ArticleModel(
              picture: article['image_url'],
              subtitle: article['description'],
              title: article['title']);
          allarticles.add(articleModel);
        }
      return allarticles;
    }  catch (e) {
      return [];
    }
  }
}
