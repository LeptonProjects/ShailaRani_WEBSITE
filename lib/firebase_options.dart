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
    apiKey: 'AIzaSyCKqKmV0-KYK6tGUCQRWXfAGRGYgNiq74c',
    appId: '1:1058911056096:web:98ef79c1e88221673d6085',
    messagingSenderId: '1058911056096',
    projectId: 'shailarani-associates',
    authDomain: 'shailarani-associates.firebaseapp.com',
    storageBucket: 'shailarani-associates.appspot.com',
    measurementId: 'G-CJT8WDLC09',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdEUK3sVyCBwq93OTSwLxX3bZFF_w90HM',
    appId: '1:1058911056096:android:5b3dc89a5e284c5e3d6085',
    messagingSenderId: '1058911056096',
    projectId: 'shailarani-associates',
    storageBucket: 'shailarani-associates.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCqilb1uR0OVNrtwCshlHfI7bvXKVwU0y4',
    appId: '1:1058911056096:ios:6bcb88e9411db77d3d6085',
    messagingSenderId: '1058911056096',
    projectId: 'shailarani-associates',
    storageBucket: 'shailarani-associates.appspot.com',
    androidClientId: '1058911056096-6nj1au71i9cruc4n2qo2vacd4hb80u78.apps.googleusercontent.com',
    iosClientId: '1058911056096-refm6sapdfg8jlv0dqpjp0cmfgdieo33.apps.googleusercontent.com',
    iosBundleId: 'com.example.shailaRaniWebsite',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCqilb1uR0OVNrtwCshlHfI7bvXKVwU0y4',
    appId: '1:1058911056096:ios:feb88a4a47d5c29f3d6085',
    messagingSenderId: '1058911056096',
    projectId: 'shailarani-associates',
    storageBucket: 'shailarani-associates.appspot.com',
    androidClientId: '1058911056096-6nj1au71i9cruc4n2qo2vacd4hb80u78.apps.googleusercontent.com',
    iosClientId: '1058911056096-mihkqul2tnhuhinaaf6olfsvt1qudpnp.apps.googleusercontent.com',
    iosBundleId: 'com.example.shailaRaniWebsite.RunnerTests',
  );
}
