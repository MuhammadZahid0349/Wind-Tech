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
    apiKey: 'AIzaSyBXG5vTcEfdI0lpBNSIyqORhG9y3hJJQXY',
    appId: '1:137419152145:web:22db847c8341bf5a498ab0',
    messagingSenderId: '137419152145',
    projectId: 'wind-tech-b38b3',
    authDomain: 'wind-tech-b38b3.firebaseapp.com',
    storageBucket: 'wind-tech-b38b3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEzV1U5VEPZDeU1qsZc152SFilBFUaJKE',
    appId: '1:137419152145:android:90d99e68a8bec3fa498ab0',
    messagingSenderId: '137419152145',
    projectId: 'wind-tech-b38b3',
    storageBucket: 'wind-tech-b38b3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBo5kGW__sJspno_VqaVIcpFoTRP80ihbQ',
    appId: '1:137419152145:ios:63103744a3ec71d7498ab0',
    messagingSenderId: '137419152145',
    projectId: 'wind-tech-b38b3',
    storageBucket: 'wind-tech-b38b3.appspot.com',
    iosClientId: '137419152145-29trnqa9rufevftf6o6d5kq9dt6m1a2c.apps.googleusercontent.com',
    iosBundleId: 'com.example.windTech',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBo5kGW__sJspno_VqaVIcpFoTRP80ihbQ',
    appId: '1:137419152145:ios:63103744a3ec71d7498ab0',
    messagingSenderId: '137419152145',
    projectId: 'wind-tech-b38b3',
    storageBucket: 'wind-tech-b38b3.appspot.com',
    iosClientId: '137419152145-29trnqa9rufevftf6o6d5kq9dt6m1a2c.apps.googleusercontent.com',
    iosBundleId: 'com.example.windTech',
  );
}