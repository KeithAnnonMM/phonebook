import 'package:flutter/material.dart';
import 'package:phonebook/screens/delete_contact.dart';
import 'package:phonebook/screens/new_contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
      routes: {
        '/new_contact': (context) => const NewContact(),
        '/delete_contact': (context) => const DeleteContact(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 100,
            child: Center(
              child: Text('Contacts'),
            ),
          )
        ],
      ),
    );
  }
}
