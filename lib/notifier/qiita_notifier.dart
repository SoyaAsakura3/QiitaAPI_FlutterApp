import 'package:sample_app/entity/article.dart';
import 'package:sample_app/repository/qiita_api_repository.dart';
import 'package:sample_app/state/qiita_state.dart';
import 'package:sample_app/view/abstract_widget.dart';

final _qiitaRepositoryProvider =
    Provider<QiitaAPIRepository>((ref) => QiitaAPIRepository());

final qiitaNotifierProvider = 
StateNotifierProvider<QiitaNotifier, AsyncValue<QiitaState>>(
  (ref) => QiitaNotifier(ref.watch(_qiitaRepositoryProvider)));

class QiitaNotifier extends StateNotifier<AsyncValue<QiitaState>> {
  final QiitaAPIRepository _qiitaAPIRepository;

  QiitaNotifier(this._qiitaAPIRepository) : super(const AsyncValue.loading()) {
    fetchItems();
  }

  Future<void> fetchItems() async {
    state = const AsyncValue.loading();
    try {
      print('fetch');
      final items = await _qiitaAPIRepository.fetchItems();
      final newState = QiitaState(list: items);
      state = AsyncValue.data(newState);
      
      print(items);
    } catch (error, stack) {
      print('エラーitems');
      state = AsyncValue.error(error, stack);
    }
  }
}