// ignore: file_names
import 'package:flutter/material.dart';
import '../utils/My_Routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homepage);
      setState(() {
        changeButton = false;
      });
    }
  }

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
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter the username",
                            label: Text("Username")),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter the Password",
                            label: Text("Password")),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value != null && value.length < 6) {
                            return "Password cannot be less than 6 digit";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 40.0),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50.0 : 20.0),
                        child: InkWell(
                          onTap: () => {
                            moveToHome(context),
                          },
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
