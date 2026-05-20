import 'package:flutter/material.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("New Post")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(height: 200, color: Colors.grey[200], child: const Center(child: Icon(Icons.add_photo_alternate, size: 50))),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(hintText: "Write a caption...", border: OutlineInputBorder())),
            const SizedBox(height: 20),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF4f378a)), onPressed: () {}, child: const Text("Post"))
          ],
        ),
      ),
    );
  }
}
