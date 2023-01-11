import 'package:phonebook/services/contact.dart';

class ContactBook {
  ContactBook._sharedInstance();
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  final List<Contact> _contacts = [
    const Contact(name: 'Keith', number: '+256754330988'),
    const Contact(name: 'Michelle', number: '+256754330988'),
    const Contact(name: 'Derrick', number: '+256754330988'),
    const Contact(name: 'Benjamin', number: '+256754330988'),
    const Contact(name: 'Hudson', number: '+256754330988'),
    const Contact(name: 'Ritah', number: '+256754330988'),
    const Contact(name: 'Rinah', number: '+256754330988'),
    const Contact(name: 'Elijah', number: '+256754330988'),
    const Contact(name: 'Oscar', number: '+256754330988'),
    const Contact(name: 'Raymond', number: '+256754330988'),
    const Contact(name: 'Niktar', number: '+256754330988'),
    const Contact(name: 'Martha', number: '+256754330988'),
    const Contact(name: 'Mummy', number: '+256754330988'),
  ];

  int get length => _contacts.length;

  void add({required Contact contact}) {
    _contacts.add(contact);
  }

  void remove({required Contact contact}) {
    _contacts.remove(contact);
  }

  Contact? contact({required int atIndex}) =>
      _contacts.length > atIndex ? _contacts[atIndex] : null;
}
