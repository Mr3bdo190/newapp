import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messages', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: 6,
        separatorBuilder: (_, __) => const Divider(height: 1, indent: 70),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(radius: 24, backgroundColor: Colors.purple[50 * (index + 1)]),
            title: Text('Friend $index', style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('Hey! Did you check out the new concepts?', maxLines: 1, overflow: TextOverflow.ellipsis),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('9:41 AM', style: TextStyle(fontSize: 11, color: Colors.grey)),
                const SizedBox(height: 4),
                Container(padding: const EdgeInsets.all(5), decoration: const BoxDecoration(color: Color(0xFF4F378A), shape: BoxShape.circle), child: const Text('1', style: TextStyle(color: Colors.white, fontSize: 10))),
              ],
            ),
          );
        },
      ),
    );
  }
}
