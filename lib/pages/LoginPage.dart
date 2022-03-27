import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
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
              "Welcome",
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
                  ),
                  //2
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password", hintText: "enter Password"),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (() {}),
              child: Text("Login"),
            )
          ],
        ));
  }
}
