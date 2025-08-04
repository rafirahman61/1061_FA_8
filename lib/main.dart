import 'package:flutter/material.dart';

void main() {
  runApp(const MyIDApp());
}

class MyIDApp extends StatelessWidget {
  const MyIDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IDCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IDCard extends StatelessWidget {
  const IDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Digital ID'),
        backgroundColor: Colors.teal.shade700,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.teal.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Rafi',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Computer Science & Engineering',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const Divider(height: 30, thickness: 1),
              infoRow(Icons.perm_identity, 'ID', '1061_FA_8'),
              infoRow(Icons.email, 'Email', 'm.raafi.raahman@example.com'),
              infoRow(Icons.phone, 'Phone', '+880-1612702554'),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          const SizedBox(width: 10),
          Text(
            '$label:',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.black87),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
