



// ignore: unused_import
 import '../model.dart';

// ignore: camel_case_types
class student {
   student ( {
      required this.id,
      required this.name,
      required this.surName,
      required this.age,
      this.phone,
      required this.email,
      this.address,
      required this.group,
      this.gender,
      this.marriage,}
      );
  final int id;
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String? marriage;


}

// ignore: non_constant_identifier_names
final Daniar = student(
    id: 1,
    name: 'Daniar',
    surName: 'Askarov', 
    age: 21,
    email:'daniar@mail', 
    group:2,
    );


// ignore: non_constant_identifier_names
final Dinara = student(
    id: 2,
    name: 'Dinara', 
    surName: 'Askarova',
    age: 25,
    email:'Dinara@mail', 
    group:4,
    );


// ignore: non_constant_identifier_names
final Hanzada = student(
    id: 3,
    name: 'Hanzada', 
    surName: 'Maratova', 
    age: 23,
    email:'hanzada@mail',
    group:1,
    );


// ignore: non_constant_identifier_names
final Mirbek = student(
    id: 4,
    name: 'Mirbek ', 
    surName: 'Amanov',
    age: 22,
    email:'mirbek@mail', 
    group:3,
    );


// ignore: non_constant_identifier_names
final Aybek = student(
    id: 5,
    name: 'Aybek',
    surName: 'Aidarov',
    age: 20, 
    email:'Aybek@mail', 
    group:5,
    phone: '+996500101010',
    );

    