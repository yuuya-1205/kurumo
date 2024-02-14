import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kurumo/config/themes.dart';
import 'package:kurumo/feature/auth/widget/component/input_form.dart';
import 'package:kurumo/feature/auth/widget/component/primary_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const relativePath = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  height: 40,
                  width: 130,
                  child: Image.asset('assets/images/logo.png'),
                ),
                const SizedBox(
                  height: 56,
                ),
                const InputForm(
                  labelText: 'メールアドレス',
                ),
                const SizedBox(
                  height: 8,
                ),
                const InputForm(
                  labelText: 'パスワード',
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('または'),
                const SizedBox(
                  height: 32,
                ),
                PrimaryButton(
                  backgroundColor: Themes.primaryColor,
                  onPressed: () {},
                  label: 'ログイン',
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text('または'),
                const SizedBox(
                  height: 27,
                ),
                PrimaryButton(
                  onPressed: () {},
                  label: '新規登録',
                ),
                const SizedBox(
                  height: 18,
                ),
                PrimaryButton(
                  onPressed: () {},
                  label: '新規登録',
                ),
                const SizedBox(
                  height: 74,
                ),
                InkWell(
                  onTap: () {
                    const path = '/selected_page';
                    context.go(path);
                  },
                  child: const Text('新規登録'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
