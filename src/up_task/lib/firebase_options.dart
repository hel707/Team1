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
    apiKey: 'AIzaSyBWoLt9KLMkWqF3OA15FK2_MP0GIM-zU4s',
    appId: '1:855826375824:web:cd821a22afc6fd9e5f2415',
    messagingSenderId: '855826375824',
    projectId: 'uptask-planner101',
    authDomain: 'uptask-planner101.firebaseapp.com',
    storageBucket: 'uptask-planner101.appspot.com',
    measurementId: 'G-X1ZYY9ZFKC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCH_JdWWt0Mcz__iZCV7PJAOKiVJnG8nsg',
    appId: '1:855826375824:android:d8a6b42bf4f099255f2415',
    messagingSenderId: '855826375824',
    projectId: 'uptask-planner101',
    storageBucket: 'uptask-planner101.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxRsukrUIAialGWIWruH0pQHMD865y0OQ',
    appId: '1:855826375824:ios:b57a9a5865318eef5f2415',
    messagingSenderId: '855826375824',
    projectId: 'uptask-planner101',
    storageBucket: 'uptask-planner101.appspot.com',
    iosClientId: '855826375824-bve34bsr28nua6mt0hs0sn31h73cc8ht.apps.googleusercontent.com',
    iosBundleId: 'com.example.upTask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxRsukrUIAialGWIWruH0pQHMD865y0OQ',
    appId: '1:855826375824:ios:1660298a4fc70ba65f2415',
    messagingSenderId: '855826375824',
    projectId: 'uptask-planner101',
    storageBucket: 'uptask-planner101.appspot.com',
    iosClientId: '855826375824-fvc004q8gahm4chj3rc2e594rk1vdi84.apps.googleusercontent.com',
    iosBundleId: 'com.example.upTask.RunnerTests',
  );
}
