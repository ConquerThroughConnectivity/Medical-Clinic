import 'package:doctors_web/Screens/Auth/Controller/authcontroller.dart';
import 'package:flutter/material.dart';
import 'package:doctors_web/home.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "lib/Assets/doctors_background.png",
            fit: BoxFit.cover,
            scale: 2.0,
          ),
          Card(
            elevation: 1.0,
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width / 4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Prevents expansion issues
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Account Login",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Email / Phone No',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        suffixIcon: const Icon(Icons.circle_outlined,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            child: Text(
                              _obscureText ? "Hide" : "Show",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Having Trouble Sign In?",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF0858D1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          );
                        },
                        child: const Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 1.0,
                        color: Colors.black,
                        indent: 50,
                        endIndent: 10,
                        height: 2.5,
                      )),
                      Text(
                        "Or Sign in with",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(
                          child: Divider(
                        endIndent: 50,
                        indent: 10,
                        color: Colors.black,
                        thickness: 1.0,
                        height: 2.5,
                      )),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 20,
                    alignment: WrapAlignment.end,
                    children: [
                      InkWell(
                        onTap: () async {
                          context.read<Authcontroller>().googleSignIn();
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              Image.asset(
                                "lib/Assets/google.png",
                                scale: 1.8,
                              ),
                              const Text(
                                "Google",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.read<Authcontroller>().facebookLogin();
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: const Row(
                            children: [
                              Icon(
                                EvaIcons.facebook,
                                color: Colors.blue,
                                size: 30,
                              ),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20), // Prevents bottom overflow
                  Wrap(
                    alignment: WrapAlignment.end,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                      InkWell(
                        onTap: () {
                          context.read<Authcontroller>().jumpPage();
                        },
                        child: const Text(
                          "Request now",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20), // Prevents bottom overflow
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
