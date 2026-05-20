import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Aspirational', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Icon(Icons.person_outline, color: Colors.black)],
      ),
      body: Column(
        children: [
          // Stories Section
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (ctx, i) => Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(radius: 30, backgroundColor: Colors.deepPurple),
                    Text('Story', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ),
          ),
          // Posts Section
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (ctx, i) => Column(
                children: [
                  ListTile(leading: CircleAvatar(), title: Text('User Name')),
                  Container(height: 300, color: Colors.grey[300]),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [Icon(Icons.favorite), Icon(Icons.comment), Icon(Icons.send)]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
        ],
      ),
    );
  }
}
