import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.calendar_today), label: '予約'),
          NavigationDestination(icon: Icon(Icons.store), label: '業者一覧'),
          NavigationDestination(
              icon: Icon(Icons.transform_outlined), label: '履歴'),
          NavigationDestination(icon: Icon(Icons.person), label: '設定'),
        ],
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );

    ///GoRouterを用いてたぶを表示したい。
    ///下のやつ
  }
}
