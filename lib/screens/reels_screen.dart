import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              const Center(child: Text('Reel Video Placeholder', style: TextStyle(color: Colors.white38))),
              Positioned(
                right: 16,
                bottom: 100,
                child: Column(
                  children: [
                    IconButton(icon: const Icon(Icons.favorite, color: Colors.white, size: 32), onPressed: () {}),
                    const Text('124K', style: TextStyle(color: Colors.white, fontSize: 12)),
                    const SizedBox(height: 16),
                    IconButton(icon: const Icon(Icons.chat_bubble, color: Colors.white, size: 28), onPressed: () {}),
                    const Text('1.2K', style: TextStyle(color: Colors.white, fontSize: 12)),
                    const SizedBox(height: 16),
                    IconButton(icon: const Icon(Icons.share, color: Colors.white, size: 28), onPressed: () {}),
                    const Text('Share', style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
              ),
              Positioned(
                left: 16,
                bottom: 40,
                right: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('@creative_soul', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 8),
                    Text('Exploring movement and space in the new studio setup. ✨', style: TextStyle(color: Colors.white70, fontSize: 13)),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
