import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAc6omToIuw2_8sF6ZYfABLdB6jOA1Eg0I",
            authDomain: "nutrinat-e-com-1c1bb7.firebaseapp.com",
            projectId: "nutrinat-e-com-1c1bb7",
            storageBucket: "nutrinat-e-com-1c1bb7.appspot.com",
            messagingSenderId: "862225887397",
            appId: "1:862225887397:web:e7c48439f6e106d3725d4c"));
  } else {
    await Firebase.initializeApp();
  }
}
