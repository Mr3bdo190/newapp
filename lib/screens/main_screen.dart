import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'explore_screen.dart';
import 'reels_screen.dart';
import 'chat_screen.dart';
import 'profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const ExploreScreen(),
    const ReelsScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 24, offset: const Offset(0, -4))],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white.withOpacity(0.9),
          elevation: 0,
          selectedItemColor: const Color(0xFF4F378A),
          unselectedItemColor: const Color(0xFF5C5F62),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) => setState(() => _currentIndex = index),
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home_rounded, size: 28), label: 'Home'),
            const BottomNavigationBarItem(icon: Icon(Icons.search_rounded, size: 28), label: 'Explore'),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [Color(0xFF00F2FE), Color(0xFF4F378A)]),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 24),
              ),
              label: 'Add',
            ),
            const BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded, size: 28), label: 'Chat'),
            const BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded, size: 28), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
