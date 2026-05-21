import 'package:flutter/material.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: TextButton(
          onPressed: () => Navigator.pop(context), 
          child: const Text('إلغاء', style: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF5C5F62), fontSize: 16, fontWeight: FontWeight.bold))
        ),
        title: const Text('منشور جديد', style: TextStyle(fontFamily: 'Tajawal', fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF1B1B1B))),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9999),
              gradient: const LinearGradient(
                colors: [Color(0xFF00F2FE), Color(0xFF4FACFE), Color(0xFF4F378A)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [BoxShadow(color: const Color(0xFF4F378A).withOpacity(0.3), blurRadius: 8, offset: const Offset(0, 2))],
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, 
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                minimumSize: Size.zero,
              ),
              onPressed: () {},
              child: const Text('نشر', style: TextStyle(fontFamily: 'Tajawal', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // منطقة رفع الصور بتأثير Glassmorphism
            Container(
              height: 320,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.5), width: 1.5),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 20, offset: const Offset(0, 4))],
              ),
              child: Stack(
                children: [
                  // دوائر الألوان الخفيفة في الخلفية (Ambient Blobs)
                  Positioned(
                    top: 20, 
                    left: 20, 
                    child: CircleAvatar(radius: 60, backgroundColor: const Color(0xFF00F2FE).withOpacity(0.05))
                  ),
                  Positioned(
                    bottom: 20, 
                    right: 20, 
                    child: CircleAvatar(radius: 60, backgroundColor: const Color(0xFF4F378A).withOpacity(0.05))
                  ),
                  
                  // محتوى الكانفاس
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle, 
                            color: const Color(0xFF4F378A).withOpacity(0.08)
                          ),
                          child: const Icon(Icons.add_photo_alternate_rounded, size: 40, color: Color(0xFF4F378A)),
                        ),
                        const SizedBox(height: 16),
                        const Text('اضغط لإضافة صورة أو فيديو', style: TextStyle(fontFamily: 'Tajawal', fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF4F378A))),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // صندوق كتابة النص (Caption)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(20), 
                border: Border.all(color: const Color(0xFFEEEEEE)),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10)]
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.purple[100],
                    backgroundImage: const NetworkImage('https://i.pravatar.cc/150?img=11'),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: TextField(
                      maxLines: 4,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'اكتب وصفاً لمنشورك...',
                        hintStyle: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF7A7582), fontSize: 15),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // قائمة الخيارات الإضافية
            Container(
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(20), 
                border: Border.all(color: const Color(0xFFEEEEEE)),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10)]
              ),
              child: Column(
                children: [
                  _buildOptionItem(Icons.location_on_outlined, 'إضافة موقع'),
                  const Divider(height: 1, indent: 50),
                  _buildOptionItem(Icons.person_add_alt_1_outlined, 'الإشارة لأشخاص'),
                  const Divider(height: 1, indent: 50),
                  _buildOptionItem(Icons.music_note_outlined, 'إضافة موسيقى'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildOptionItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF5C5F62)),
      title: Text(title, style: const TextStyle(fontFamily: 'Tajawal', fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF1B1B1B))),
      trailing: const Icon(Icons.chevron_left_rounded, color: Color(0xFFCBC4D2)),
      onTap: () {}, // سيتم إضافة الوظيفة لاحقاً
    );
  }
}
