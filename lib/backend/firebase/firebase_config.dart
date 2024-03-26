import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC9oSlnZnJQ3LZqo0QcyUQlDtm0oyiRVWA",
            authDomain: "aboitiz-leadcon-app-66562.firebaseapp.com",
            projectId: "aboitiz-leadcon-app-66562",
            storageBucket: "aboitiz-leadcon-app-66562.appspot.com",
            messagingSenderId: "56649846092",
            appId: "1:56649846092:web:97d69e28ccbcad562953e9",
            measurementId: "G-17SPX2537N"));
  } else {
    await Firebase.initializeApp();
  }
}
