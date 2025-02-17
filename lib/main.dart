import 'package:doctors_web/Screens/Auth/Auth.dart';
import 'package:doctors_web/Screens/Auth/Controller/authcontroller.dart';
import 'package:doctors_web/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(
      // 2. Wrap your app with ChangeNotifierProvider
      ChangeNotifierProvider(
          create: (context) => Authcontroller(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Auth(),
    );
  }
}
