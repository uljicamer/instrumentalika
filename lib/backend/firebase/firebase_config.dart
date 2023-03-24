import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCI-PgiOKMPEu7du8JEKZPOjB2QwN6em7A",
            authDomain: "instrumentalika-f70dd.firebaseapp.com",
            projectId: "instrumentalika-f70dd",
            storageBucket: "instrumentalika-f70dd.appspot.com",
            messagingSenderId: "143658063553",
            appId: "1:143658063553:web:56a2fac333a90539e9a640"));
  } else {
    await Firebase.initializeApp();
  }
}
