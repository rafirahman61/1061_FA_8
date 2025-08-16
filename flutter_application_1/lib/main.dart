import 'package:flutter/material.dart';

void main() {
  runApp(const MyIDApp());
}

class MyIDApp extends StatelessWidget {
  const MyIDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const IDCard(), debugShowCheckedModeBanner: false);
  }
}

class IDCard extends StatelessWidget {
  const IDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital ID Card'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/images.jpg',
                ), // Add your image to assets
              ),
              const SizedBox(height: 10),
              const Text(
                'Name: Md Rafiur Rahman Sarkar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Batch: 60th, Department of CSE',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 1),
              const ListTile(
                leading: Icon(Icons.perm_identity),
                title: Text('ID: 0182220012101061'),
              ),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email: m.raafi.raahman@gmail.com'),
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone: +8801612702554'),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
