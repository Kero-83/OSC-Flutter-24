// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDuRfjzve8sb75kglOhPT7hOG04sOE44gg',
    appId: '1:576733420553:web:2630a58f5fd11217e8acd8',
    messagingSenderId: '576733420553',
    projectId: 'chat-app-a889a',
    authDomain: 'chat-app-a889a.firebaseapp.com',
    storageBucket: 'chat-app-a889a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9ujherCbJ69Vy7M3iZ65vzHnQZ-vxCYU',
    appId: '1:576733420553:android:8a0bff8097aee4e0e8acd8',
    messagingSenderId: '576733420553',
    projectId: 'chat-app-a889a',
    storageBucket: 'chat-app-a889a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUNCUAuh-7GZrDDlR4kk-zySsBGKKFsyg',
    appId: '1:576733420553:ios:310c07475d6875e6e8acd8',
    messagingSenderId: '576733420553',
    projectId: 'chat-app-a889a',
    storageBucket: 'chat-app-a889a.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );
}
