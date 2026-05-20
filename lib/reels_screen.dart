import 'package:flutter/material.dart';
class ReelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PageView.builder(scrollDirection: Axis.vertical, itemBuilder: (ctx, i) => Container(color: Colors.black, child: Center(child: Text("Reel $i", style: TextStyle(color: Colors.white))))));
  }
}
