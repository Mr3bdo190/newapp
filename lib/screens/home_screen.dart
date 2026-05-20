import 'package:flutter/material.dart';
import 'create_post_screen.dart';
import 'notifications_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: const Text('Aspirational', style: TextStyle(color: Color(0xFF4F378A), fontWeight: FontWeight.bold, fontSize: 24)),
        leading: IconButton(icon: const Icon(Icons.camera_alt_outlined, color: Colors.black), onPressed: () {}),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded, color: Colors.black),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const NotificationsScreen())),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // قسم الستوري الاحترافي بحلقات ملونة مثل إنستجرام
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [Color(0xFF00F2FE), Color(0xFF4F378A)]),
                          ),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(radius: 25, backgroundColor: Colors.grey[300]),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(index == 0 ? 'Your Story' : 'User $index', style: const TextStyle(fontSize: 11, color: Colors.black87)),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(height: 1, color: Color(0xFFEEEEEE)),
            // كروت المنشورات (Feed Posts) بتصميم متميز
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFEEEEEE)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(backgroundColor: Colors.purple[100]),
                        title: const Text('Alex Rivera', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                        subtitle: const Text('2 hours ago', style: TextStyle(fontSize: 11)),
                        trailing: const Icon(Icons.more_horiz),
                      ),
                      Container(
                        height: 300,
                        width: double.infinity,
                        color: const Color(0xFFE2E2E2),
                        child: const Icon(Icons.image, size: 40, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.between,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.favorite, color: Color(0xFF4F378A)),
                                const SizedBox(width: 4),
                                const Text('1.2k', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                const SizedBox(width: 16),
                                const Icon(Icons.chat_bubble_outline_rounded, color: Colors.black87),
                                const SizedBox(width: 4),
                                const Text('48', style: TextStyle(fontSize: 12)),
                                const SizedBox(width: 16),
                                IconButton(icon: const Icon(Icons.send_rounded), onPressed: () {}),
                              ],
                            ),
                            const Icon(Icons.bookmark_border_rounded),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF4F378A),
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreatePostScreen())),
      ),
    );
  }
}
