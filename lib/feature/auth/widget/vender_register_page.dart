import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kurumo/feature/auth/widget/component/obscure_text.dart';
import 'package:kurumo/feature/auth/widget/component/primary_button.dart';

class VenderRegisterPage extends ConsumerStatefulWidget {
  const VenderRegisterPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VenderRegisterPageState();
}

class _VenderRegisterPageState extends ConsumerState<VenderRegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ///Prioviderの作成

    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 240,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'メールアドレス',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ObscureText(
              controller: passwordController,
              labelText: 'パスワード',
            ),
            const SizedBox(
              height: 20,
            ),

            ///ここはチェックするだけ
            const ObscureText(
              labelText: 'パスワードの再入力',
            ),
            const SizedBox(
              height: 190,
            ),
            PrimaryButton(
              label: '確認メールを送信',
              onPressed: () {
                // FirebaseAuth.instance.createUserWithEmailAndPassword(
                //     email: emailController.text,
                //     password: passwordController.text);
                const path = '/send_email_page';
                context.go(path);
              },
            ),
          ],
        ),
      ),
    );
  }
}
