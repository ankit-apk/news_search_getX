import 'package:http/http.dart' as http;
import 'package:newsgetxnewsapi/model/news_model.dart';

class ApiService {
  var client = http.Client();

  Future<News> getNews(String query) async {
    var response = await client.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=$query&apiKey=6b03edfd40594926bf8788c53deaaeff'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return newsFromJson(jsonString);
    }
  }
}
