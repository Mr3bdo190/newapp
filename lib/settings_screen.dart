import 'package:flutter/material.dart';
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Settings")), body: ListView(children: [ListTile(title: Text("Account")), ListTile(title: Text("Privacy")), ListTile(title: Text("Logout", style: TextStyle(color: Colors.red)))]));
  }
}
