import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile'), actions: [IconButton(icon: const Icon(Icons.check, color: Color(0xFF4F378A)), onPressed: () => Navigator.pop(context))]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(radius: 45, backgroundColor: Colors.grey[300], child: const Icon(Icons.camera_alt, size: 30)),
            const TextField(decoration: InputDecoration(labelText: 'Name')),
            const TextField(decoration: InputDecoration(labelText: 'Username')),
            const TextField(decoration: InputDecoration(labelText: 'Bio')),
          ],
        ),
      ),
    );
  }
}
