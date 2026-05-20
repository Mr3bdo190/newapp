import 'package:flutter/material.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Post'), actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('Share', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)))]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(height: 200, width: double.infinity, color: Colors.grey[200], child: const Icon(Icons.add_photo_alternate_outlined, size: 50, color: Colors.grey)),
            const SizedBox(height: 16),
            const TextField(maxLines: 4, decoration: InputDecoration(hintText: 'Write a caption...', border: InputBorder.none)),
          ],
        ),
      ),
    );
  }
}
