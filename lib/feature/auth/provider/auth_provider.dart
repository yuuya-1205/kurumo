import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

///ログインしているユーザーのuidを取得できる。
final uidProvider =
    Provider((ref) => ref.watch(firebaseAuthProvider).currentUser?.uid);
