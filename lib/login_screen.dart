import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(padding: EdgeInsets.all(20), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Welcome Back", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      TextField(decoration: InputDecoration(labelText: "Email")),
      TextField(obscureText: true, decoration: InputDecoration(labelText: "Password")),
      SizedBox(height: 20),
      ElevatedButton(onPressed: () {}, child: Text("Login"))
    ])));
  }
}
