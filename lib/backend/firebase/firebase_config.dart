import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCVMWZPdI_XpT1U8qzxzQ1RqMSakB2zEuY",
            authDomain: "sanaee-project.firebaseapp.com",
            projectId: "sanaee-project",
            storageBucket: "sanaee-project.appspot.com",
            messagingSenderId: "515642872541",
            appId: "1:515642872541:web:c02f59170cbb6b424ac134",
            measurementId: "G-XLQSVWQ4HQ"));
  } else {
    await Firebase.initializeApp();
  }
}
