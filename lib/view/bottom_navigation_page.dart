import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_app/view/abstract_widget.dart';
import 'package:sample_app/view/page/like/likeView.dart';
import 'package:sample_app/view/page/top/topView.dart';


class BottomNavigationPage extends AbstractStatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = useState(0);
    final pages = [
      const TopView(),
      const LikeView()
    ];

    return Scaffold(
      body: pages[selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (int selectIndex) {
          selectedIndex.value = selectIndex;
        },
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '記事一覧'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'お気に入り')
        ],
        type: BottomNavigationBarType.fixed,
        ),
    );
  }
  
}