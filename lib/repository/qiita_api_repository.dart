import 'package:dio/dio.dart';
import 'package:sample_app/api/api_client.dart';
import 'package:sample_app/entity/article.dart';

class QiitaAPIRepository {
  final dio = Dio();

  Future<List<Article>> fetchItems() async {
    final client = RestClient(dio);
    final response = await client.fetchItems();
    return response;
  }
}
