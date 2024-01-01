import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kurumo/feature/auth/widget/login_page.dart';
import 'package:kurumo/feature/auth/widget/selected_page.dart';
import 'package:kurumo/feature/auth/widget/vender_register_page.dart';
import 'package:riverpod/riverpod.dart';

final goRouterProvider = Provider(
  (ref) {
    return GoRouter(
      ///最初のページってこと？

      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: '/selected_page',
          builder: (context, state) {
            return const SelectedPage();
          },
        ),
        GoRoute(
          path: '/vender_register_page',
          builder: (context, state) {
            return const VenderRegisterPage();
          },
        ),
      ],
    );
  },
);
