import 'package:flutter/material.dart';
import 'package:upto_15_days_of_flutter/pages/HomePage.dart';
import 'package:upto_15_days_of_flutter/pages/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyClass());
}

class MyClass extends StatelessWidget {
  const MyClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*   home: HomePage(), */
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
