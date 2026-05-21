import 'package:flutter/material.dart';
import 'edit_profile_screen.dart';
import 'login_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xFF1B1B1B), size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('الإعدادات', style: TextStyle(fontFamily: 'Tajawal', fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF1B1B1B))),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          // قسم الحساب
          _buildSectionHeader('الحساب'),
          _buildListTile(
            context, 
            Icons.person_outline_rounded, 
            'تعديل الملف الشخصي', 
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const EditProfileScreen()))
          ),
          _buildListTile(context, Icons.lock_outline_rounded, 'الخصوصية والأمان'),
          _buildListTile(context, Icons.bookmark_border_rounded, 'العناصر المحفوظة'),
          
          const SizedBox(height: 24),
          
          // قسم التفضيلات
          _buildSectionHeader('التفضيلات'),
          _buildListTile(context, Icons.notifications_none_rounded, 'الإشعارات'),
          _buildListTile(context, Icons.language_rounded, 'اللغة', trailingText: 'العربية'),
          _buildListTile(context, Icons.dark_mode_outlined, 'المظهر', trailingText: 'فاتح'),
          
          const SizedBox(height: 24),
          
          // قسم المساعدة
          _buildSectionHeader('أخرى'),
          _buildListTile(context, Icons.help_outline_rounded, 'مركز المساعدة'),
          _buildListTile(context, Icons.info_outline_rounded, 'حول التطبيق'),
          
          const SizedBox(height: 24),
          const Divider(height: 1, color: Color(0xFFEEEEEE)),
          
          // زر تسجيل الخروج
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFBA1A1A).withOpacity(0.1), 
                shape: BoxShape.circle
              ),
              child: const Icon(Icons.logout_rounded, color: Color(0xFFBA1A1A), size: 22),
            ),
            title: const Text(
              'تسجيل الخروج', 
              style: TextStyle(fontFamily: 'Tajawal', fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFBA1A1A))
            ),
            onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const LoginScreen()), (route) => false),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  // دالة بناء عناوين الأقسام
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, bottom: 8, top: 8),
      child: Text(
        title, 
        style: const TextStyle(fontFamily: 'Tajawal', fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF7A7582))
      ),
    );
  }

  // دالة بناء خيارات القائمة
  Widget _buildListTile(BuildContext context, IconData icon, String title, {String? trailingText, VoidCallback? onTap}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white, 
          shape: BoxShape.circle, 
          border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.5))
        ),
        child: Icon(icon, color: const Color(0xFF1B1B1B), size: 20),
      ),
      title: Text(
        title, 
        style: const TextStyle(fontFamily: 'Tajawal', fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF1B1B1B))
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingText != null) 
            Text(trailingText, style: const TextStyle(fontFamily: 'Tajawal', fontSize: 14, color: Color(0xFF7A7582))),
          if (trailingText != null) 
            const SizedBox(width: 8),
          const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFFCBC4D2), size: 16),
        ],
      ),
      onTap: onTap ?? () {},
    );
  }
}
