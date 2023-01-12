import 'package:flutter/material.dart';
import 'package:phonebook/services/contact.dart';

class ContactBook extends ValueNotifier<List<Contact>> {
  ContactBook._sharedInstance()
      : super([Contact(name: 'Keith', number: '+256754330988')]);
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  int get length => value.length;

  void add({required Contact contact}) {
    final contacts = value;
    contacts.add(contact);
    notifyListeners();
  }

  void remove({required Contact contact}) {
    final contacts = value;
    contacts.remove(contact);
    notifyListeners();
  }

  Contact? contact({required int atIndex}) =>
      value.length > atIndex ? value[atIndex] : null;
}
