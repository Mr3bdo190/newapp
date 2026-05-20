import 'package:flutter/material.dart';
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Chats")), body: ListView.builder(itemCount: 10, itemBuilder: (ctx, i) => ListTile(leading: CircleAvatar(), title: Text("Friend Name"), subtitle: Text("Hello!"))));
  }
}
