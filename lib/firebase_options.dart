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
    apiKey: 'AIzaSyCukFTyjySBt-Nq5ka8ERg6Sxy0Pq7RIi8',
    appId: '1:778053004781:web:ea52be18d790c00f3d4be4',
    messagingSenderId: '778053004781',
    projectId: 'ecommerce-app-5f859',
    authDomain: 'ecommerce-app-5f859.firebaseapp.com',
    storageBucket: 'ecommerce-app-5f859.appspot.com',
    measurementId: 'G-D31DWQ43B6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHFYyikjRSykknIu_jEsr65zQv79aaENg',
    appId: '1:778053004781:android:35c7746d4d500b0e3d4be4',
    messagingSenderId: '778053004781',
    projectId: 'ecommerce-app-5f859',
    storageBucket: 'ecommerce-app-5f859.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDS9L7qeVlcbxWmlK9q6TmOAa0_K3zTXXo',
    appId: '1:778053004781:ios:0d8abf776a379f213d4be4',
    messagingSenderId: '778053004781',
    projectId: 'ecommerce-app-5f859',
    storageBucket: 'ecommerce-app-5f859.appspot.com',
    iosClientId: '778053004781-ehmtmgc7ggtu90ugmivlv6r62j8ore5e.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerceUser',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDS9L7qeVlcbxWmlK9q6TmOAa0_K3zTXXo',
    appId: '1:778053004781:ios:0d8abf776a379f213d4be4',
    messagingSenderId: '778053004781',
    projectId: 'ecommerce-app-5f859',
    storageBucket: 'ecommerce-app-5f859.appspot.com',
    iosClientId: '778053004781-ehmtmgc7ggtu90ugmivlv6r62j8ore5e.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerceUser',
  );
}
