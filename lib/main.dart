import 'package:flutter/material.dart';
import 'package:practiceflutter/pages/HomePage.dart';
import 'package:practiceflutter/pages/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceflutter/utils/My_Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homepage: (context) => HomePage(),
        MyRoutes.loginpage: (context) => LoginPage(),
      },
    );
  }
}
