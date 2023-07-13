import 'package:dio/dio.dart';
import 'package:sample_app/api/api_client.dart';
import 'package:sample_app/entity/article.dart';

class QiitaAPIRepository {
  final dio = Dio();

  Future<Article> fetchItem(String id) async {
    final client = RestClient(dio);
    final response = await client.fetchItem(id);
    return response;
  }
}
