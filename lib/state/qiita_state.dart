import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app/entity/article.dart';

part 'qiita_state.freezed.dart';

@freezed
class QiitaState with _$QiitaState {
  const factory QiitaState({
    List<Article>? list 
  }) = _QiitaState;
}
