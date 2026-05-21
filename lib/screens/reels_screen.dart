import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'ريلز', 
          style: TextStyle(fontFamily: 'Tajawal', fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined, color: Colors.white, size: 28), 
            onPressed: () {}
          )
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              // خلفية الفيديو (Placeholder)
              Container(
                color: const Color(0xFF1B1B1B),
                child: Center(
                  child: Icon(Icons.play_circle_outline, color: Colors.white.withOpacity(0.15), size: 80),
                ),
              ),
              
              // تدرج لوني (Gradient Overlay) عشان النصوص تبان واضحة
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                  ),
                ),
              ),
              
              // أيقونات التفاعل على اليمين
              Positioned(
                right: 16,
                bottom: 100,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildAction(Icons.favorite, '124K', color: const Color(0xFFBA1A1A)),
                    const SizedBox(height: 24),
                    _buildAction(Icons.chat_bubble_outline_rounded, '1.2K'),
                    const SizedBox(height: 24),
                    _buildAction(Icons.send_outlined, 'مشاركة'),
                    const SizedBox(height: 24),
                    const Icon(Icons.more_horiz, color: Colors.white, size: 30),
                  ],
                ),
              ),
              
              // بيانات المستخدم والنص تحت على الشمال
              Positioned(
                left: 16,
                bottom: 40,
                right: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.purple[200],
                          backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${index + 30}'),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '@abdalla_sayed', 
                          style: TextStyle(fontFamily: 'Tajawal', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)
                        ),
                        const SizedBox(width: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text('متابعة', style: TextStyle(fontFamily: 'Tajawal', color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'تجربة تصميم واجهات جديدة ✨ التطبيق بيطلع عظمة! #Flutter #Wateny', 
                      style: TextStyle(fontFamily: 'Tajawal', color: Colors.white, fontSize: 14, height: 1.4)
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), shape: BoxShape.circle),
                          child: const Icon(Icons.music_note, color: Colors.white, size: 14),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'الصوت الأصلي - Abdalla', 
                          style: TextStyle(fontFamily: 'Tajawal', color: Colors.white, fontSize: 13)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildAction(IconData icon, String label, {Color color = Colors.white}) {
    return Column(
      children: [
        Icon(icon, color: color, size: 36),
        const SizedBox(height: 6),
        Text(
          label, 
          style: const TextStyle(fontFamily: 'Tajawal', color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)
        ),
      ],
    );
  }
}
