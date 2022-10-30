import 'package:news_app/constants/api_constants.dart';
import 'package:news_app/models/top_news.dart';
import 'package:http/http.dart' as http;

class TopNewsRepo {
  final http.Client client = http.Client();

  Future<void> fetchTopNews() async {
    final Uri uri = Uri.parse(ApiConst.TopNews);
    final http.Response response = await client.get(uri);

    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
    }
  }
}
