// ignore: file_names
import 'package:flutter/material.dart';
import '../utils/My_Routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter the username",
                          label: Text("Username")),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter the Password",
                          label: Text("Password")),
                    ),
                    const SizedBox(height: 40.0),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            minimumSize: const Size(150, 40)),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homepage);
                        },
                        child: const Text("Login"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
