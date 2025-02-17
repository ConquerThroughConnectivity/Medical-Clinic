import 'package:doctors_web/Screens/Auth/Controller/authcontroller.dart';
import 'package:doctors_web/Screens/Auth/Login.dart';
import 'package:doctors_web/Screens/Auth/Signup.dart';
import 'package:doctors_web/home.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/Assets/background4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        // const RainbowBackground(
        //   config: RainbowConfig(
        //       orientation: RainbowOrientation.down,
        //       arcSpacing: 3,
        //       backgroundColor: Colors.transparent),
        // ),
        // const BubbleBackground(b
        //   config: BubbleConfig(enableWobble: true, wobbleIntensity: 2.5),
        // ),

        PageView(
          controller: context.watch<Authcontroller>().pageController,
          children: const [Login(), Signup()],
        ),
      ],
    ));
  }
}
