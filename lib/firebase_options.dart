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
    apiKey: 'AIzaSyBl6tCyJ2fEEErdg3RPGTGk--qm-yfL7Xk',
    appId: '1:1058690674828:web:6f94d0e8fbab13146c4ba9',
    messagingSenderId: '1058690674828',
    projectId: 'flutternote-85a63',
    authDomain: 'flutternote-85a63.firebaseapp.com',
    storageBucket: 'flutternote-85a63.appspot.com',
    measurementId: 'G-2BJEL7JB52',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJ-MWXTKRJvlWgUK6Z5XlHgLsKVkGaqUY',
    appId: '1:1058690674828:android:2779be9f97e6eba26c4ba9',
    messagingSenderId: '1058690674828',
    projectId: 'flutternote-85a63',
    storageBucket: 'flutternote-85a63.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTfPlyop8NeL0hJ-gzdpwMbGgQJKvV420',
    appId: '1:1058690674828:ios:64e7d3c1a31fe95d6c4ba9',
    messagingSenderId: '1058690674828',
    projectId: 'flutternote-85a63',
    storageBucket: 'flutternote-85a63.appspot.com',
    iosClientId: '1058690674828-tvsdl1ojuionueariiglfqp3ignpn9ud.apps.googleusercontent.com',
    iosBundleId: 'com.example.toddo',
  );
}
