import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Widgets')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://images.ctfassets.net/cnu0m8re1exe/6sLnMf6GKSgsXxbJbpGXWO/7ea7a98ebc24318f0d60b1f5484053de/shutterstock_707735803.jpg?fm=jpg&fl=progressive&w=660&h=433&fit=fill',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.star, color: Colors.orange, size: 30),
              SizedBox(width: 10),
              Text('Flutter Widgets', style: TextStyle(fontSize: 20)),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text('Press Me')),
        ],
      ),
    );
  }
}
