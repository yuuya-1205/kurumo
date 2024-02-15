import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';

final firebaseProvider = Provider((ref) => FirebaseAuth.instance);

///ログインしているユーザーのuidを取得できる。
final firebaseAuthProvider =
    Provider((ref) => ref.watch(firebaseProvider).currentUser);

final uidProvider =
    Provider((ref) => ref.watch(firebaseProvider).currentUser?.uid);
