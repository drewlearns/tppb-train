import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBnXHlocn-IrlVO7-NXJFcxci89SvEOX7A",
            authDomain: "tppb2-f0p5cc.firebaseapp.com",
            projectId: "tppb2-f0p5cc",
            storageBucket: "tppb2-f0p5cc.appspot.com",
            messagingSenderId: "701061003268",
            appId: "1:701061003268:web:627f50d45bfd9573271d51"));
  } else {
    await Firebase.initializeApp();
  }
}
