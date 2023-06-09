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
    apiKey: 'AIzaSyAUzI_YAEILyeddNP6fLOKHk4-WCXO6k4o',
    appId: '1:275511748317:web:5149a3d1f9872bad781d34',
    messagingSenderId: '275511748317',
    projectId: 'foodchain-saas',
    authDomain: 'foodchain-saas.firebaseapp.com',
    databaseURL: 'https://foodchain-saas-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'foodchain-saas.appspot.com',
    measurementId: 'G-RBYVQJTND0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsyUDvLOFALIbzV1oUGqq6otGjYPzo2-k',
    appId: '1:275511748317:android:d510f19c31322108781d34',
    messagingSenderId: '275511748317',
    projectId: 'foodchain-saas',
    databaseURL: 'https://foodchain-saas-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'foodchain-saas.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJSwvNPpBQVAXl6CTaKffW4kLPQv_OYI4',
    appId: '1:275511748317:ios:24b0d94ad58d86dc781d34',
    messagingSenderId: '275511748317',
    projectId: 'foodchain-saas',
    databaseURL: 'https://foodchain-saas-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'foodchain-saas.appspot.com',
    iosClientId: '275511748317-ajouufbden4chv3hnr7a90u2lpdu69mb.apps.googleusercontent.com',
    iosBundleId: 'chain.food.flutter.foodchainFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJSwvNPpBQVAXl6CTaKffW4kLPQv_OYI4',
    appId: '1:275511748317:ios:ca642178c4d5a06f781d34',
    messagingSenderId: '275511748317',
    projectId: 'foodchain-saas',
    databaseURL: 'https://foodchain-saas-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'foodchain-saas.appspot.com',
    iosClientId: '275511748317-5hkdb8n2ggetuauec44mqdf7sb4mfofm.apps.googleusercontent.com',
    iosBundleId: 'chain.food.flutter.foodchainFlutter.RunnerTests',
  );
}
