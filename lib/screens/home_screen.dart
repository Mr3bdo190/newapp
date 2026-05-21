import 'package:flutter/material.dart';
import 'notifications_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.95),
        elevation: 0,
        title: const Text(
          'Aspirational', 
          style: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF4F378A), fontWeight: FontWeight.bold, fontSize: 24)
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded, color: Color(0xFF1B1B1B), size: 28),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const NotificationsScreen())),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // قسم القصص (Stories)
            Container(
              height: 110,
              margin: const EdgeInsets.only(top: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle, 
                            gradient: LinearGradient(
                              colors: [Color(0xFF00F2FE), Color(0xFF4F378A)],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            )
                          ),
                          child: CircleAvatar(
                            radius: 30, 
                            backgroundColor: Colors.white, 
                            child: CircleAvatar(
                              radius: 28, 
                              backgroundColor: Colors.grey[200],
                              // صورة افتراضية كـ Placeholder
                              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${index + 10}'),
                            )
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          index == 0 ? 'قصتك' : 'مستخدم $index', 
                          style: const TextStyle(fontSize: 12, fontFamily: 'Tajawal', fontWeight: FontWeight.w600)
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            
            // خط فاصل ناعم
            const Divider(height: 1, color: Color(0xFFEEEEEE)),
            
            // قسم المنشورات
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(24), 
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 15, offset: const Offset(0, 5))
                    ]
                  ),
                  child: Column(
                    children: [
                      // رأس المنشور
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        leading: CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.purple[100],
                          backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${index + 20}'),
                        ),
                        title: const Text('أحمد محمد', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Tajawal', fontSize: 15)),
                        subtitle: const Text('منذ ساعتين', style: TextStyle(fontSize: 12, fontFamily: 'Tajawal', color: Colors.grey)),
                        trailing: IconButton(icon: const Icon(Icons.more_horiz, color: Color(0xFF5C5F62)), onPressed: (){}),
                      ),
                      
                      // صورة المنشور
                      Container(
                        height: 300, 
                        width: double.infinity, 
                        color: const Color(0xFFF3F3F3), 
                        child: Image.network(
                          'https://picsum.photos/seed/${index + 50}/500/500', 
                          fit: BoxFit.cover
                        )
                      ),
                      
                      // أزرار التفاعل
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.favorite, color: Color(0xFFBA1A1A), size: 28),
                                const SizedBox(width: 6),
                                const Text('1.2K', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                                const SizedBox(width: 16),
                                const Icon(Icons.chat_bubble_outline_rounded, color: Color(0xFF1B1B1B), size: 26),
                                const SizedBox(width: 6),
                                const Text('48', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                                const SizedBox(width: 16),
                                const Icon(Icons.send_outlined, color: Color(0xFF1B1B1B), size: 26),
                              ],
                            ),
                            const Icon(Icons.bookmark_border_rounded, color: Color(0xFF1B1B1B), size: 28),
                          ],
                        ),
                      ),
                      
                      // التعليقات
                      const Padding(
                        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('تصميم راقي جداً واحترافي 🚀🔥', style: TextStyle(fontFamily: 'Tajawal', fontSize: 14, fontWeight: FontWeight.w500)),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
