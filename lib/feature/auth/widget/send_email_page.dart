import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kurumo/feature/auth/widget/component/primary_button.dart';

class SendEmailPage extends ConsumerStatefulWidget {
  const SendEmailPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SendEmailPageState();
}

class _SendEmailPageState extends ConsumerState<SendEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 240,
            ),
            const Center(
              child: Text(
                'メールアドレスに届いたリンクから認証してください',
                style: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 360,
            ),
            PrimaryButton(
              label: '次へ',
              onPressed: () {
                const path = '/user_register_page';
                context.go(path);
              },
            )
          ],
        ),
      ),
    );
  }
}
