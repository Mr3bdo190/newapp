import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'الرسائل', 
          style: TextStyle(fontFamily: 'Tajawal', fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1B1B1B))
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.maps_ugc_outlined, color: Color(0xFF1B1B1B), size: 26),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // شريط البحث الخاص بالرسايل
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF3F3F3),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.3)),
              ),
              child: const TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'ابحث في الرسائل...',
                  hintStyle: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF7A7582), fontSize: 14),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Color(0xFF5C5F62)),
                  contentPadding: EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
          ),
          
          // قائمة الرسائل
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                bool isUnread = index < 2; // أول رسالتين نخليهم كأنهم مقروؤوش
                bool isOnline = index % 3 == 0; // بعض المستخدمين أونلاين

                return Container(
                  color: isUnread ? const Color(0xFF4F378A).withOpacity(0.04) : Colors.transparent,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.purple[100],
                          backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${index + 40}'),
                        ),
                        // مؤشر الأونلاين (النقطة الخضراء)
                        if (isOnline)
                          Positioned(
                            bottom: 2,
                            right: 2,
                            child: Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                color: const Color(0xFF34A853),
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                      ],
                    ),
                    title: Text(
                      'صديق $index', 
                      style: TextStyle(
                        fontFamily: 'Tajawal', 
                        fontWeight: isUnread ? FontWeight.bold : FontWeight.w600, 
                        fontSize: 16,
                        color: const Color(0xFF1B1B1B),
                      )
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        isUnread ? 'أرسل لك صورة جديدة 📸' : 'تمام يا صاحبي، نتقابل بكرة إن شاء الله.', 
                        style: TextStyle(
                          fontFamily: 'Tajawal', 
                          fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
                          color: isUnread ? const Color(0xFF1B1B1B) : const Color(0xFF5C5F62),
                          fontSize: 13,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '10:30 م', 
                          style: TextStyle(
                            fontFamily: 'Tajawal', 
                            color: isUnread ? const Color(0xFF4F378A) : const Color(0xFF7A7582), 
                            fontSize: 12,
                            fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
                          )
                        ),
                        const SizedBox(height: 6),
                        // بادج الرسائل الغير مقروءة
                        if (isUnread)
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Color(0xFF4F378A),
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              '1', 
                              style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)
                            ),
                          ),
                      ],
                    ),
                    onTap: () {}, // الدخول للمحادثة
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
