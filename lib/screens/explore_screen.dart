import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // محاكاة الأطوال المختلفة لتصميم الـ Masonry
    final List<double> cardHeights = [240, 160, 180, 220, 150, 210, 170, 190];
    final List<String> cardTitles = ['العمارة الحديثة', 'الهدوء', 'التصميم', 'الفن الرقمي', 'مساحات', 'تصوير', 'تجريدي', 'نمط حياة'];

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Column(
          children: [
            // الهيدر وشريط البحث
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'استكشف', 
                        style: TextStyle(fontFamily: 'Tajawal', fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1B1B1B))
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle, boxShadow: [
                          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)
                        ]),
                        child: const Icon(Icons.tune_rounded, color: Color(0xFF1B1B1B)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8)],
                      border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.3)),
                    ),
                    child: const TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'ابحث عن منشئي المحتوى، الاتجاهات...',
                        hintStyle: TextStyle(fontFamily: 'Tajawal', color: Color(0xFF7A7582), fontSize: 14),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Color(0xFF5C5F62)),
                        contentPadding: EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // الفئات الشائعة (Chips)
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildGradientChip('التصوير الفوتوغرافي'),
                  _buildNormalChip('العمارة'),
                  _buildNormalChip('السفر'),
                  _buildNormalChip('البساطة'),
                  _buildNormalChip('التصميم الداخلي'),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // شبكة الصور (Masonry Grid)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SingleChildScrollView(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // العمود الأول
                      Expanded(
                        child: Column(
                          children: List.generate(4, (index) => _buildMasonryTile(
                            cardHeights[index * 2], 
                            cardTitles[index * 2], 
                            index * 2
                          )),
                        ),
                      ),
                      const SizedBox(width: 12),
                      // العمود الثاني
                      Expanded(
                        child: Column(
                          children: List.generate(4, (index) => _buildMasonryTile(
                            cardHeights[index * 2 + 1], 
                            cardTitles[index * 2 + 1], 
                            index * 2 + 1
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradientChip(String label) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9999),
        gradient: const LinearGradient(colors: [Color(0xFF00F2FE), Color(0xFFA18CD1)]),
      ),
      child: Center(
        child: Text(label, style: const TextStyle(fontFamily: 'Tajawal', fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white))
      ),
    );
  }

  Widget _buildNormalChip(String label) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9999),
        border: Border.all(color: const Color(0xFFCBC4D2).withOpacity(0.5)),
      ),
      child: Center(
        child: Text(label, style: const TextStyle(fontFamily: 'Tajawal', fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF494551)))
      ),
    );
  }

  Widget _buildMasonryTile(double height, String title, int imageIndex) {
    return Container(
      height: height,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/seed/${imageIndex + 100}/400/600'),
          fit: BoxFit.cover,
        ),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4))],
      ),
      child: Stack(
        children: [
          // تدرج لوني عشان النص يبان بوضوح
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter, 
                end: Alignment.center, 
                colors: [Colors.black.withOpacity(0.8), Colors.transparent]
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: Text(
              title, 
              style: const TextStyle(fontFamily: 'Tajawal', fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)
            ),
          )
        ],
      ),
    );
  }
}
