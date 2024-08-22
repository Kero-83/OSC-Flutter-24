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
    apiKey: 'AIzaSyB4uOR33bLN__bmmG1_pPm4oIun_vtMkko',
    appId: '1:333611139180:web:3f94021d1dadcdf71bd849',
    messagingSenderId: '333611139180',
    projectId: 'login-app-b54e6',
    authDomain: 'login-app-b54e6.firebaseapp.com',
    storageBucket: 'login-app-b54e6.appspot.com',
    measurementId: 'G-6HJZLPKPN6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAI_n6QsXPCS8D-Lgf80Ia8-72nfZZF-fY',
    appId: '1:333611139180:android:0a41d745d8b72d6b1bd849',
    messagingSenderId: '333611139180',
    projectId: 'login-app-b54e6',
    storageBucket: 'login-app-b54e6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkmpwYWLe5Ulh-kp6hcXT2HdsMxBNyCQE',
    appId: '1:333611139180:ios:bc781780035bee571bd849',
    messagingSenderId: '333611139180',
    projectId: 'login-app-b54e6',
    storageBucket: 'login-app-b54e6.appspot.com',
    iosBundleId: 'com.example.loginApp',
  );
}
