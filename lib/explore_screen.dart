import 'package:flutter/material.dart';
class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Explore")), body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (ctx, i) => Container(margin: EdgeInsets.all(5), color: Colors.blueGrey)));
  }
}
