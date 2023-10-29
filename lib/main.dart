import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kurumo/feature/auth/widget/login_page.dart';
import 'package:kurumo/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}
