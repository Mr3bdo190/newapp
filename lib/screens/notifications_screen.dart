import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          leading: const CircleAvatar(backgroundColor: Color(0xFF4F378A), child: Icon(Icons.favorite, color: Colors.white, size: 16)),
          title: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 14),
              children: [TextSpan(text: 'Elena Rossi ', style: TextStyle(fontWeight: FontWeight.bold)), TextSpan(text: 'liked your photo.')],
            ),
          ),
          subtitle: const Text('2m ago', style: TextStyle(fontSize: 11)),
          trailing: Container(width: 40, height: 40, color: Colors.grey[300]),
        ),
      ),
    );
  }
}
