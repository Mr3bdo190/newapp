import 'dart:ui';
import 'package:flutter/material.dart';
import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          // الـ Blobs الخلفية الملونة والمضببة
          Positioned(
            top: -100,
            right: -50,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF6750A4).withOpacity(0.25),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80), 
                child: Container(color: Colors.transparent)
              ),
            ),
          ),
          Positioned(
            bottom: -80,
            left: -50,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFC9A74D).withOpacity(0.15),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60), 
                child: Container(color: Colors.transparent)
              ),
            ),
          ),
          
          // المحتوى الرئيسي
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // الـ Logo الدائري
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFFE8E8E8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04), 
                            blurRadius: 24, 
                            offset: const Offset(0, 8)
                          )
                        ],
                        border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.3)),
                      ),
                      child: const Icon(Icons.all_inclusive_rounded, size: 40, color: Color(0xFF4F378A)),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'أهلاً بك', 
                      style: TextStyle(fontFamily: 'Tajawal', fontSize: 28, fontWeight: FontWeight.800, color: Color(0xFF1B1B1B))
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'سجل دخولك للمتابعة إلى حسابك', 
                      style: TextStyle(fontFamily: 'Tajawal', fontSize: 17, color: Color(0xFF494551))
                    ),
                    const SizedBox(height: 40),
                    
                    // حقول الإدخال بتأثير زجاجي مبسط
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.5)),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'البريد الإلكتروني',
                          hintStyle: TextStyle(color: Color(0xFF7A7582)),
                          prefixIcon: Icon(Icons.mail_outline, color: Color(0xFF494551)),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.5)),
                      ),
                      child: const TextField(
                        obscureText: true,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'كلمة المرور',
                          hintStyle: TextStyle(color: Color(0xFF7A7582)),
                          prefixIcon: Icon(Icons.lock_outline, color: Color(0xFF494551)),
                          suffixIcon: Icon(Icons.visibility_off_outlined, color: Color(0xFF494551)),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'هل نسيت كلمة المرور؟', 
                          style: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF4F378A), fontSize: 13, fontWeight: FontWeight.600)
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    
                    // أزرار العمليات بنظام تدرج الألوان (Neon Gradient)
                    Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9999),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF00F2FE), Color(0xFF4FACFE), Color(0xFF4F378A)], 
                          begin: Alignment.topLeft, 
                          end: Alignment.bottomRight
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF4F378A).withOpacity(0.2), 
                            blurRadius: 12, 
                            offset: const Offset(0, 4)
                          )
                        ],
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, 
                          shadowColor: Colors.transparent, 
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999))
                        ),
                        onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainScreen())),
                        child: const Text(
                          'تسجيل الدخول', 
                          style: TextStyle(fontFamily: 'Tajawal', fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFFCBC4D2)), 
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999))
                        ),
                        onPressed: () {},
                        child: const Text(
                          'إنشاء حساب جديد', 
                          style: TextStyle(fontFamily: 'Tajawal', fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF1B1B1B))
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
