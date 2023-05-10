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
    apiKey: 'AIzaSyA6zCG1OOpP3UsLyIa1zsYTNQfL7O0w5vg',
    appId: '1:763951039289:web:f0c8210bba3f22c74b1ee8',
    messagingSenderId: '763951039289',
    projectId: 'flutterappdemo-4a648',
    authDomain: 'flutterappdemo-4a648.firebaseapp.com',
    storageBucket: 'flutterappdemo-4a648.appspot.com',
    measurementId: 'G-CFGJCS2FPR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAq5E_lCTnDk2uzBAygL-GexB4cBf7MW4Q',
    appId: '1:763951039289:android:31d6293182d17e574b1ee8',
    messagingSenderId: '763951039289',
    projectId: 'flutterappdemo-4a648',
    storageBucket: 'flutterappdemo-4a648.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_UyEFqiUXagUOMHNMmRzBy8dXRHRME7o',
    appId: '1:763951039289:ios:586b901b3b1d5b604b1ee8',
    messagingSenderId: '763951039289',
    projectId: 'flutterappdemo-4a648',
    storageBucket: 'flutterappdemo-4a648.appspot.com',
    iosClientId: '763951039289-rloqea2hhhh42df2jk4fik098h93s7jb.apps.googleusercontent.com',
    iosBundleId: 'com.example.applicationDummy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_UyEFqiUXagUOMHNMmRzBy8dXRHRME7o',
    appId: '1:763951039289:ios:586b901b3b1d5b604b1ee8',
    messagingSenderId: '763951039289',
    projectId: 'flutterappdemo-4a648',
    storageBucket: 'flutterappdemo-4a648.appspot.com',
    iosClientId: '763951039289-rloqea2hhhh42df2jk4fik098h93s7jb.apps.googleusercontent.com',
    iosBundleId: 'com.example.applicationDummy',
  );
}