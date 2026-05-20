import 'package:flutter/material.dart';
import 'create_post_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aspirational', style: TextStyle(color: Color(0xFF4f378a), fontWeight: FontWeight.bold))),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (ctx, i) => Card(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              const ListTile(leading: CircleAvatar(backgroundColor: Colors.deepPurple), title: Text("User Name")),
              Container(height: 250, color: Colors.grey[200], child: const Center(child: Icon(Icons.image, size: 50))),
              Padding(padding: const EdgeInsets.all(8.0), child: Row(children: const [Icon(Icons.favorite_border), SizedBox(width: 15), Icon(Icons.comment_outlined)])),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF4f378a),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreatePostScreen())),
        child: const Icon(Icons.add),
      ),
    );
  }
}
