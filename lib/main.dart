import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/models/userModel.dart';
import 'package:flutter_firebase/screens/home/wrapper.dart';
import 'package:flutter_firebase/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDAAmZ_qVI9ur32Nd8UWMtPq2z0iEs_5Fg",
        authDomain: "authfirebase-88c6a.appspot.com",
        projectId: "authfirebase-88c6a",
        storageBucket: "authfirebase-88c6a.appspot.com",
        messagingSenderId: "192421857812",
        appId: "1:192421857812:android:5129e3793e269c8048f501",
      ),
    );
  } else if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDAAmZ_qVI9ur32Nd8UWMtPq2z0iEs_5Fg",
        appId: "1:192421857812:android:5129e3793e269c8048f501",
        messagingSenderId: "192421857812",
        projectId: "authfirebase-88c6a",
        storageBucket: "authfirebase-88c6a.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<Usermodel?>.value(
      initialData: Usermodel(uid: "'"),
      value: AuthServices().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
