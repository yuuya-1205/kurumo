import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kurumo/feature/auth/provider/auth_provider.dart';
import 'package:kurumo/feature/auth/widget/login_page.dart';
import 'package:kurumo/feature/auth/widget/selected_page.dart';
import 'package:kurumo/feature/auth/widget/send_email_page.dart';
import 'package:kurumo/feature/auth/widget/user_register_page.dart';
import 'package:kurumo/feature/auth/widget/vender_register_page.dart';
import 'package:kurumo/feature/history/view/histry_page.dart';
import 'package:kurumo/feature/reservation/view/calender_page.dart';
import 'package:kurumo/feature/reservation/view/reservation_page.dart';
import 'package:kurumo/feature/reservation/view/tentative_reservation_page.dart';
import 'package:kurumo/feature/set_up/view/set_up_page.dart';
import 'package:kurumo/feature/top_page.dart';
import 'package:kurumo/feature/vender/view/vender_list_page.dart';
import 'package:riverpod/riverpod.dart';

///最初のページってこと？
///ここにリダイレクト処理をかく
/// uidがあったらTopPageに遷移する。
///入ってくるpathがわかる
///stateにpath情報が含まれている。
///
///ログイン状態に
///行かせたいものに
///ログイン済みか判定してreturn /login_pageみたいなイメージ
///ログインに行く場合はログインに行かせる。
///何もしたいのはreturn nullで表現する。

///やること
///ログインしているかどうかみる。
///Firebaseでログイン状態かどうかわかるための方法は？
///これを監視する。

final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final likeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'like');
final cartNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'cart');
final profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');
final reservationListNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'reservationList');
final calenderNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'calender');
final tentativeReservationNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'tentativeReservation');

final goRouterProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: '/reservation_page',
      navigatorKey: rootNavigatorKey,
      routes: [
        StatefulShellRoute.indexedStack(
            parentNavigatorKey: rootNavigatorKey,
            builder: (context, state, navigationShell) {
              return TopPage(navigationShell: navigationShell);
            },
            branches: [
              ///ここからtabの遷移
              StatefulShellBranch(
                navigatorKey: homeNavigatorKey,
                routes: [
                  StatefulShellRoute.indexedStack(
                    builder: (context, state, navigationShell) {
                      return ReservationPage(navigationShell: navigationShell);
                    },
                    branches: [
                      StatefulShellBranch(
                        routes: [
                          GoRoute(
                            path: '/carender_page',
                            pageBuilder: (context, state) => NoTransitionPage(
                              key: state.pageKey,
                              child: const CalenderPage(),
                            ),
                          ),
                        ],
                      ),
                      StatefulShellBranch(
                        routes: [
                          GoRoute(
                            path: '/tentative_reservation_page',
                            pageBuilder: (context, state) => NoTransitionPage(
                              key: state.pageKey,
                              child: const TentativeReservationPage(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              // likeブランチ
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: '/vender_list_page',
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const VenderListPage(),
                    ),
                  ),
                ],
              ),
              // cartブランチ
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: '/history_page',
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const HistoryPage(),
                    ),
                  ),
                ],
              ),
              // profileブランチ
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: '/set_up_page',
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const SetUpPage(),
                    ),
                  ),
                ],
              ),
            ]),
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
        GoRoute(
          path: '/send_email_page',
          builder: (context, state) {
            return const SendEmailPage();
          },
        ),
        GoRoute(
          path: '/user_register_page',
          builder: (context, state) {
            return const UserRegisterPage();
          },
        ),
      ],

      ///やりたいこと
      ///現在の状態を監視して遷移先を変えたい。
      ///ログインしていたらtop_pageへ
      ///
      ///状態を監視するものを作る。
      ///FirebaseAuthにuserがあるかnullか？
      ///userがあったらtop_page
      ///nullならlogin_page
      redirect: (context, state) {
        final user = ref.watch(firebaseAuthProvider);
        print(user);
        if (user == null) {
          state.fullPath == '/';
        } else {
          state.fullPath == '/top_page';
        }
        print(state.fullPath);
        log("path: ${state.path}");

        ///現在、どのページにいるか
        log("matchedLocation: ${state.matchedLocation}");
        log("uri: ${state.uri}");
        // FirebaseAuth.instance.authStateChanges().listen((user) {});

        ///聞く。
        ///streamを聴く。変更があった場合、最新のユーザーが流れていく。
        ///最新の情報が入ってきたときに
        print(FirebaseAuth.instance.authStateChanges().listen((user) {
          print(user?.email ?? '');
        }));
        return null;
      },
    );
  },
);
