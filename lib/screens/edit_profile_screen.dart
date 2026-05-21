import 'dart:ui';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('إلغاء', style: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF5C5F62), fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        title: const Text('تعديل الملف', style: TextStyle(fontFamily: 'Tajawal', fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1B1B1B))),
        centerTitle: true,
        actions: [
          // زر الحفظ بتدرج لوني احترافي
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [Color(0xFF00F2FE), Color(0xFF4FACFE), Color(0xFF4F378A)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [BoxShadow(color: const Color(0xFF4F378A).withOpacity(0.2), blurRadius: 8, offset: const Offset(0, 2))],
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                minimumSize: Size.zero,
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text('حفظ', style: TextStyle(fontFamily: 'Tajawal', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // قسم صورة الملف الشخصي مع زر التغيير
            Center(
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFF00F2FE), Color(0xFF4F378A)],
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 56,
                        backgroundColor: Colors.purple[50],
                        backgroundImage: const NetworkImage('https://i.pravatar.cc/150?img=11'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4F378A),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)],
                      ),
                      child: const Icon(Icons.camera_alt_rounded, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () {},
              child: const Text('تغيير صورة الملف الشخصي', style: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF4F378A), fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            
            const SizedBox(height: 32),
            
            // حقول الإدخال بتصميم راقي
            _buildEditField('الاسم الكامل', 'Abdalla Sayed', Icons.person_outline_rounded),
            const SizedBox(height: 20),
            _buildEditField('اسم المستخدم', 'Mr3bdo', Icons.alternate_email_rounded),
            const SizedBox(height: 20),
            _buildEditField(
              'السيرة الذاتية', 
              'مطور تطبيقات ومصمم واجهات 🚀\nبناء شبكات اجتماعية بريميوم ✨', 
              Icons.info_outline_rounded,
              isBio: true,
            ),
            
            const SizedBox(height: 32),
            const Divider(color: Color(0xFFEEEEEE)),
            const SizedBox(height: 16),
            
            // خيارات إضافية
            _buildActionLink('تبديل إلى حساب احترافي'),
            _buildActionLink('إعدادات المعلومات الشخصية'),
          ],
        ),
      ),
    );
  }

  Widget _buildEditField(String label, String initialValue, IconData icon, {bool isBio = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4, bottom: 8),
          child: Text(label, style: const TextStyle(fontFamily: 'Tajawal', color: Color(0xFF7A7582), fontSize: 13, fontWeight: FontWeight.bold)),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF3F3F3).withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.3)),
          ),
          child: TextFormField(
            initialValue: initialValue,
            maxLines: isBio ? 4 : 1,
            textAlign: TextAlign.right,
            style: const TextStyle(fontFamily: 'Tajawal', fontSize: 16, color: Color(0xFF1B1B1B), fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              prefixIcon: Icon(icon, color: const Color(0xFF4F378A), size: 22),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionLink(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.arrow_back_ios_new_rounded, size: 14, color: Color(0xFFCBC4D2)),
            Text(title, style: const TextStyle(fontFamily: 'Tajawal', color: Color(0xFF4F378A), fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
