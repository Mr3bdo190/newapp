import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Profile")), body: Column(children: [
      CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
      Text("Username", style: TextStyle(fontSize: 20)),
      Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (ctx, i) => Container(margin: EdgeInsets.all(2), color: Colors.grey)))
    ]));
  }
}
