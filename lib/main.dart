import 'package:flutter/material.dart';
import 'package:phonebook/screens/delete_contact.dart';
import 'package:phonebook/screens/new_contact.dart';
import 'package:phonebook/services/contact.dart';
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
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: ContactBook(),
        builder: (context, value, child) {
          final contacts = value;
          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts[index];
              return Dismissible(
                key: ValueKey(contact.id),
                onDismissed: ((direction) {
                  ContactBook().remove(contact: contact);
                }),
                child: Card(
                  child: ListTile(
                    title: Text(contact.name),
                    subtitle: Text(contact.number),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ContactBook().add(contact: Contact(name: 'Mark', number: '12334'));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
