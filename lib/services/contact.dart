import 'package:uuid/uuid.dart';

class Contact {
  final String id;
  final String name;
  final String number;

  Contact({required this.name, required this.number}) : id = const Uuid().v4();
}
