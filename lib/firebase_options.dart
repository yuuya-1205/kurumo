// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAu2wQ4ASzcnV8WWt0nl0ZfSGrVX_dFVY8',
    appId: '1:565500284022:web:9bd51cd0e009095aa62357',
    messagingSenderId: '565500284022',
    projectId: 'kurumo-dev',
    authDomain: 'kurumo-dev.firebaseapp.com',
    storageBucket: 'kurumo-dev.appspot.com',
    measurementId: 'G-WPMMVN87EN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBZm-DcMPTkfl_PYhI0mucYItX62awc3xY',
    appId: '1:565500284022:android:326f80bd394571baa62357',
    messagingSenderId: '565500284022',
    projectId: 'kurumo-dev',
    storageBucket: 'kurumo-dev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnUgKleLc8eEntBtrxkVQ6fHlZ5MSyaec',
    appId: '1:565500284022:ios:632c00481f507ef9a62357',
    messagingSenderId: '565500284022',
    projectId: 'kurumo-dev',
    storageBucket: 'kurumo-dev.appspot.com',
    iosBundleId: 'com.example.kurumo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnUgKleLc8eEntBtrxkVQ6fHlZ5MSyaec',
    appId: '1:565500284022:ios:84c5a0834509c14aa62357',
    messagingSenderId: '565500284022',
    projectId: 'kurumo-dev',
    storageBucket: 'kurumo-dev.appspot.com',
    iosBundleId: 'com.example.kurumo.RunnerTests',
  );
}
