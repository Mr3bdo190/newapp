import 'package:flutter/material.dart';
class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Notifications")), body: ListView.builder(itemCount: 5, itemBuilder: (ctx, i) => ListTile(title: Text("New Like!"))));
  }
}
