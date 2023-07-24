import 'package:flutter/material.dart';
import 'package:sample_app/notifier/qiita_notifier.dart';
import 'package:sample_app/view/abstract_widget.dart';

class TopView extends AbstractStatelessWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(qiitaNotifierProvider);

    return state.when(
      data: (qiitaState) => ListView.builder(
        itemCount: qiitaState.list?.length ?? 0, // 記事リストがnullの場合は0を指定
        itemBuilder: (context, index) {
          final article = qiitaState.list?[index];
          return ListTile(
            title: Text(article?.title ?? ''), // 記事のタイトルを表示
            subtitle: Text(article?.url ?? ''), // 記事のユーザー名を表示
          );
        },
      ),
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('エラーが発生しました')),
    );
  }
}








