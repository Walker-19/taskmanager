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
/// ...

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
    apiKey: 'AIzaSyD5Rj1hkfQP4pz5MHlIEyUyhHsn8lnFHjM',
    appId: '1:656056879294:web:c33bd3a2865bcc3120b6ef',
    messagingSenderId: '656056879294',
    projectId: 'taskmanager-74f73',
    authDomain: 'taskmanager-74f73.firebaseapp.com',
    storageBucket: 'taskmanager-74f73.appspot.com',
    measurementId: 'G-FY39KQY11J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDtiLaEjxANy3-MtkHXM5POVfhq49WR9Y',
    appId: '1:656056879294:android:974a4cd4ae774a3420b6ef',
    messagingSenderId: '656056879294',
    projectId: 'taskmanager-74f73',
    storageBucket: 'taskmanager-74f73.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCPaTbkyZxATv4m2Zo2gaq7SSC2M2HKkgA',
    appId: '1:656056879294:ios:425361b17dbf50ae20b6ef',
    messagingSenderId: '656056879294',
    projectId: 'taskmanager-74f73',
    storageBucket: 'taskmanager-74f73.appspot.com',
    iosBundleId: 'com.example.taskmanager',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCPaTbkyZxATv4m2Zo2gaq7SSC2M2HKkgA',
    appId: '1:656056879294:ios:e12fd522bafb0d4c20b6ef',
    messagingSenderId: '656056879294',
    projectId: 'taskmanager-74f73',
    storageBucket: 'taskmanager-74f73.appspot.com',
    iosBundleId: 'com.example.taskmanager.RunnerTests',
  );
}
