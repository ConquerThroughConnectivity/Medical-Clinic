import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authcontroller with ChangeNotifier {
  PageController pageController = PageController();

  jumpPage() {
    if (pageController.page == 0) {
      pageController.jumpToPage(1);
      notifyListeners();
    } else if (pageController.page == 1) {
      pageController.jumpToPage(0);
      notifyListeners();
    }
  }

  Future<dynamic> facebookLogin() async {
    FacebookAuth.i.webAndDesktopInitialize(
      appId: "3811683182479343",
      cookie: true,
      xfbml: true,
      version: "v15.0",
    );
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      // final userData = await FacebookAuth.instance.getUserData();
      // print(userData);
    }
  }

  Future<dynamic> googleSignIn() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      clientId:
          '454617542176-t5go5gj43ju6ktbgs1idlvcurkajg0bs.apps.googleusercontent.com', // Replace with your actual Client ID
      scopes: <String>[
        'email', // Request email access
        'profile', // Request profile access
      ],
    );

    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      // print(googleUser!.displayName);
      // print(googleUser.email);
      // print(googleUser.photoUrl);
    } catch (e) {
      return;
    }
  }

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    if (password.length < 8) {
      return 'Password must be at least 8 characters long';
    }

    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    if (!password.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lowercase letter';
    }

    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }

    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }

    // Add more checks as needed (e.g., no consecutive characters)

    return null; // Return null if the password is valid
  }
}
