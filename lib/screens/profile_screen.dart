import 'package:flutter/material.dart';
import 'settings_screen.dart';
import 'edit_profile_screen.dart'; // هننشئها الخطوة الجاية

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.lock_outline, size: 16, color: Color(0xFF1B1B1B)),
            SizedBox(width: 4),
            Text(
              'Mr3bdo', 
              style: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF1B1B1B), fontWeight: FontWeight.bold, fontSize: 20)
            ),
            Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF1B1B1B)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_outlined, color: Color(0xFF1B1B1B), size: 28),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu_rounded, color: Color(0xFF1B1B1B), size: 28),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsScreen())),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // الهيدر (الصورة والإحصائيات)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Row(
                children: [
                  // صورة البروفايل بحلقة متدرجة
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFF00F2FE), Color(0xFF4F378A)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      )
                    ),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundColor: Colors.purple[100],
                        backgroundImage: const NetworkImage('https://i.pravatar.cc/150?img=11'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  
                  // الإحصائيات
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildStatColumn('142', 'منشور'),
                        _buildStatColumn('12.4K', 'متابع'),
                        _buildStatColumn('328', 'يتابع'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            // البايو (Bio)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Abdalla Sayed',
                    style: TextStyle(fontFamily: 'Tajawal', fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF1B1B1B)),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'مطور تطبيقات ومصمم واجهات 🚀\nFlutter & Firebase Developer 💻\nبناء شبكات اجتماعية بريميوم ✨',
                    style: TextStyle(fontFamily: 'Tajawal', fontSize: 14, color: Color(0xFF494551), height: 1.4),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'github.com/Mr3bdo190',
                    style: TextStyle(fontFamily: 'Tajawal', fontSize: 14, color: Color(0xFF4F378A), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // أزرار التحكم في الحساب
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.3)),
                      ),
                      child: TextButton(
                        onPressed: () {}, // سيتم ربطها بصفحة التعديل
                        child: const Text('تعديل الملف', style: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF1B1B1B), fontWeight: FontWeight.bold, fontSize: 14)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.3)),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('مشاركة الملف', style: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF1B1B1B), fontWeight: FontWeight.bold, fontSize: 14)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            // الهايلايتس (Highlights)
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: 4,
                itemBuilder: (context, index) {
                  final titles = ['رحلات ✈️', 'أكواد 💻', 'تصاميم 🎨', 'يوميات ☕'];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: const Color(0xFFCBC4D2), width: 1)),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color(0xFFF3F3F3),
                            backgroundImage: NetworkImage('https://picsum.photos/seed/${index + 60}/150/150'),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(titles[index], style: const TextStyle(fontFamily: 'Tajawal', fontSize: 12, fontWeight: FontWeight.w600)),
                      ],
                    ),
                  );
                },
              ),
            ),
            
            // شريط التبويبات (Tabs)
            const Divider(height: 1, color: Color(0xFFEEEEEE)),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFF1B1B1B), width: 1.5))),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: const Icon(Icons.grid_on, color: Color(0xFF1B1B1B)),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: const Icon(Icons.video_library_outlined, color: Color(0xFF7A7582)),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: const Icon(Icons.person_pin_outlined, color: Color(0xFF7A7582)),
                  ),
                ),
              ],
            ),
            
            // شبكة المنشورات (Grid)
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, 
                crossAxisSpacing: 2, 
                mainAxisSpacing: 2
              ),
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/seed/${index + 200}/300/300'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String count, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(count, style: const TextStyle(fontFamily: 'Tajawal', fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1B1B1B))),
        Text(label, style: const TextStyle(fontFamily: 'Tajawal', fontSize: 14, color: Color(0xFF494551))),
      ],
    );
  }
}
