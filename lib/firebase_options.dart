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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCO1cgZoyxaZ8ryqejhEwFaFnkvjgPR1G4',
    appId: '1:1041763820851:web:7178b157e478dc43784a46',
    messagingSenderId: '1041763820851',
    projectId: 'projeto-flutter-40a55',
    authDomain: 'projeto-flutter-40a55.firebaseapp.com',
    storageBucket: 'projeto-flutter-40a55.appspot.com',
    measurementId: 'G-WWEGPRB8N8',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZi1z0QXUXj47OJPMfDJKwVtONyQJbDPk',
    appId: '1:1041763820851:ios:ca221d564b2bfa31784a46',
    messagingSenderId: '1041763820851',
    projectId: 'projeto-flutter-40a55',
    storageBucket: 'projeto-flutter-40a55.appspot.com',
    iosBundleId: 'com.example.flutterApplicationReceitas',
  );
}