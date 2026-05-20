import 'package:flutter/material.dart';
import 'login_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          const ListTile(leading: Icon(Icons.person_outline), title: Text('Account'), trailing: Icon(Icons.chevron_right)),
          const ListTile(leading: Icon(Icons.lock_outline), title: Text('Privacy'), trailing: Icon(Icons.chevron_right)),
          const ListTile(leading: Icon(Icons.notifications_none), title: Text('Notifications'), trailing: Icon(Icons.chevron_right)),
          const ListTile(leading: Icon(Icons.language), title: Text('Language'), trailing: Text('English', style: TextStyle(color: Colors.grey))),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Logout', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const LoginScreen()), (route) => false),
          ),
        ],
      ),
    );
  }
}
