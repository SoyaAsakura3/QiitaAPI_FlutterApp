import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sample_app/const/url.dart';
import 'package:sample_app/entity/article.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: URLConst.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/items')
  Future<Article> fetchItem(String id);
}
