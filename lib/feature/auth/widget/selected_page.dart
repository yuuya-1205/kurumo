import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectedPage extends ConsumerWidget {
  const SelectedPage({super.key});

  static const relativePath = '/selected_page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 145,
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: 160,
                width: double.infinity,
                child: Image.asset('assets/images/customer.png'),
              ),
            ),
            const SizedBox(
              height: 56,
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: 160,
                width: double.infinity,
                child: Image.asset('assets/images/vender.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
