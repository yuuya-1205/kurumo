import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReservationPage extends ConsumerStatefulWidget {
  const ReservationPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ReservationPageState();
}

class _ReservationPageState extends ConsumerState<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('こんにちは');
  }
}
