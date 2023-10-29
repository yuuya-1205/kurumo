import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kurumo/component/input_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              InputForm(
                labelText: 'メールアドレス',
              ),
              const SizedBox(
                height: 8,
              ),
              InputForm(
                labelText: 'パスワード',
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('新規登録'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
