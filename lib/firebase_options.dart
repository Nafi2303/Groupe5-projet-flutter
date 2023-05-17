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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-1SOV6ikLv1rzFBSC9LfRfNHFHwogQ94',
    appId: '1:416176370100:android:66faa10fc2a8fb74b4c2e1',
    messagingSenderId: '416176370100',
    projectId: 'gest-taches-d1e4d',
    storageBucket: 'gest-taches-d1e4d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBObW8PM36mLdiNdqba5O72xIXm5DOKneI',
    appId: '1:416176370100:ios:bf47009931a45a0eb4c2e1',
    messagingSenderId: '416176370100',
    projectId: 'gest-taches-d1e4d',
    storageBucket: 'gest-taches-d1e4d.appspot.com',
    iosClientId: '416176370100-miile24c8cvr920r2lv4t6ejmbs3bika.apps.googleusercontent.com',
    iosBundleId: 'com.example.tp2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBObW8PM36mLdiNdqba5O72xIXm5DOKneI',
    appId: '1:416176370100:ios:4ef45b3d01e903d5b4c2e1',
    messagingSenderId: '416176370100',
    projectId: 'gest-taches-d1e4d',
    storageBucket: 'gest-taches-d1e4d.appspot.com',
    iosClientId: '416176370100-asvpv0rnmrfo51dmi1khj70u7p1n8n0r.apps.googleusercontent.com',
    iosBundleId: 'com.example.tp2.RunnerTests',
  );
}
