import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xFF1B1B1B), size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'الإشعارات', 
          style: TextStyle(fontFamily: 'Tajawal', fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF1B1B1B))
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: 12,
        separatorBuilder: (context, index) => const Divider(height: 1, color: Color(0xFFEEEEEE), indent: 76),
        itemBuilder: (context, index) {
          // توزيع عشوائي لأنواع الإشعارات عشان الشكل يبان طبيعي
          bool isFollow = index % 3 == 0;
          bool isLike = index % 3 == 1;
          
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.purple[50],
                  backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${index + 50}'),
                ),
                // أيقونة نوع الإشعار المصغرة
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: isFollow ? const Color(0xFF0056D2) : (isLike ? const Color(0xFFBA1A1A) : const Color(0xFF4F378A)),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Icon(
                      isFollow ? Icons.person_add : (isLike ? Icons.favorite : Icons.chat_bubble),
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                ),
              ],
            ),
            title: RichText(
              text: TextSpan(
                style: const TextStyle(fontFamily: 'Tajawal', fontSize: 14, color: Color(0xFF1B1B1B)),
                children: [
                  TextSpan(text: 'مستخدم ${index + 1} ', style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: isFollow ? 'بدأ في متابعتك.' : (isLike ? 'أعجب بمنشورك.' : 'علق على صورتك.')),
                ],
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Text('منذ ساعتين', style: TextStyle(fontFamily: 'Tajawal', fontSize: 12, color: Color(0xFF7A7582))),
            ),
            trailing: isFollow 
                ? Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4F378A),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text('متابعة', style: TextStyle(fontFamily: 'Tajawal', color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                  )
                : Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/seed/${index + 100}/100/100'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            onTap: () {}, // للتفاعل مع الإشعار
          );
        },
      ),
    );
  }
}
