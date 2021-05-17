import 'package:get/get.dart';
import 'package:newsgetxnewsapi/model/news_model.dart';
import 'package:newsgetxnewsapi/networking/news_networking.dart';

class NewsController extends GetxController {
  var newsList = List<Article>.empty(growable: true).obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getnews();
  }

  void getnews() async {
    var news = await ApiService().getNews(Get.arguments);

    try {
      if (news != null) {
        newsList.addAll(news.articles);
      }
    } finally {
      isLoading(false);
    }
  }
}
