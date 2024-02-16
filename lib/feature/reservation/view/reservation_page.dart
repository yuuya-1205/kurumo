import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReservationPage extends ConsumerStatefulWidget {
  const ReservationPage({
    super.key,
    required this.navigationShell,
    required this.children,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ReservationPageState();
}

class _ReservationPageState extends ConsumerState<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: widget.navigationShell.currentIndex,
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              onTap: (index) {
                ///path を認識させている
                widget.navigationShell.goBranch(index);
              },
              tabs: const [
                Tab(
                  text: '予約一覧',
                ),
                Tab(
                  text: 'カレンダー',
                ),
                Tab(
                  text: '仮予約',
                ),
              ],
            ),
          ),
          body: TabBarView(children: widget.children),
        );
      }),
    );
  }
}
