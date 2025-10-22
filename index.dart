import 'dart:io';

void main() {
  print('Hello, Perro');
  print('Escribe tu  nombre: ');
  String? nameInput = stdin.readLineSync();
  print('Un gusto conocerte, $nameInput');
  print('escribe tu fecha de nacimiento (dd/mm/aaaa): ');
  String? birthdayInput = stdin.readLineSync();
  DateTime? dateConverted = _convertToDate(birthdayInput!);
  if (dateConverted == null) {
    print('La fecha ingresada no es válida, nos enviaste: $birthdayInput');
    return;
  }

  var person = Person(
    name: nameInput,
    birthday: dateConverted,
    age: DateTime.now().year - dateConverted.year,
  );

  print('tu nombre es: ${person.name}');
  print('naciste el: ${person.birthday}');
  print('tienes: ${person.age} años');
}

DateTime? _convertToDate(String date) {
  List<String> parts = date.split('/');
  if (parts.length != 3) return null;
  return DateTime.tryParse('${parts[2]}-${parts[1]}-${parts[0]}');
}

class Person {
  final String? name;
  final DateTime? birthday;
  final int? age;
  Person({this.name, this.birthday, this.age});
}
