import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String title,
    required String url,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

// @freezed
// class ArticleList with _$ArticleList {
//   const factory ArticleList({
//     required int count,
//     required String next,
//     String? previous,
//     required List<Article> results,
//   }) = _ArticleList;

//   factory ArticleList.fromJson(Map<String, dynamic> json) =>
//       _$ArticleListFromJson(json);
// }
