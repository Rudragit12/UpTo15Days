import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upto_15_days_of_flutter/utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHomePage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      {
        setState(() {
          changeButton = true;
        });
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoutes.homeRoute);
        setState(() {
          changeButton = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(20)),
                Image.asset(
                  "asset/images/Smiley.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      //1
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "UserName", hintText: "Enter Username"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter userName";
                          }
                          return null;
                        },
                        onChanged: (Value) {
                          setState(() {
                            name = Value;
                          });
                        },
                      ),
                      //2
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Password", hintText: "enter Password"),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter userName";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                Material(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  child: InkWell(
                    onTap: () => moveToHomePage(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      height: 50,
                      width: changeButton ? 50 : 100,
                      child: changeButton
                          ? Icon(Icons.done)
                          : Text("login",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
