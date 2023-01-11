import 'package:flutter/material.dart';
import 'package:phonebook/screens/delete_contact.dart';
import 'package:phonebook/screens/new_contact.dart';
import 'package:phonebook/services/contact_book.dart';

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
    final contactBook = ContactBook();
    return Scaffold(
      body: ListView.builder(
        itemCount: contactBook.length,
        itemBuilder: (context, index) {
          final contact = contactBook.contact(atIndex: index)!;
          return Card(
            child: ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.number),
            ),
          );
        },
      ),
    );
  }
}
