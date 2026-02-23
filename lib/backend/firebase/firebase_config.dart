import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDGbdvaY7fJ7zwh8bR9I0rBFDQ65tGt5j0",
            authDomain: "bmc-course.firebaseapp.com",
            projectId: "bmc-course",
            storageBucket: "bmc-course.firebasestorage.app",
            messagingSenderId: "852283912776",
            appId: "1:852283912776:web:3d3078564101dd17385e7d",
            measurementId: "G-23500CVH57"));
  } else {
    await Firebase.initializeApp();
  }
}
