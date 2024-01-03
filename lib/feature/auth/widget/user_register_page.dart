import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kurumo/feature/auth/widget/component/primary_button.dart';

class UserRegisterPage extends ConsumerWidget {
  const UserRegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text('入力した会社情報はお客様に表示されます'),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              height: 16,
            ),

            ///ritchtextにする。
            const Text(
              '登録することで,' + 'プライバシーポリシー' + 'と' + '利用規約に同意したことになります',
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(
              height: 22,
            ),
            PrimaryButton(
              label: 'アカウント作成',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
