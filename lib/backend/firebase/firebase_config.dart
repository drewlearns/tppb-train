import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAQ7kRzgr48tSy8u4I1_ZGPXzo_SoqrYIU",
            authDomain: "the-purple-piggy-bank-llc.firebaseapp.com",
            projectId: "the-purple-piggy-bank-llc",
            storageBucket: "the-purple-piggy-bank-llc.appspot.com",
            messagingSenderId: "109630664075",
            appId: "1:109630664075:web:80e336a8ecfb4cb6b6d38e",
            measurementId: "G-XC23QMNPZ7"));
  } else {
    await Firebase.initializeApp();
  }
}
