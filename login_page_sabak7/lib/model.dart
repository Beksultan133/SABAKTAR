 


// ignore_for_file: non_constant_identifier_names


class Student {   
   Student (  {
      required this.image,
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
  final String image;


}


final Daniar = Student(
    id: 1,
    name: 'Daniar',
    surName: 'Askarov', 
    age: 21,
    email:'daniar@mail', 
    group:2,
   image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnQOdW7I7GHgiGSrVK0s-bZolcvu3jRvVCZg&usqp=CAU'
   );
    



final Dinara = Student(
    id: 2,
    name: 'Dinara', 
    surName: 'Askarova',
    age: 25,
    email:'Dinara@mail', 
    group:4,
    image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnQOdW7I7GHgiGSrVK0s-bZolcvu3jRvVCZg&usqp=CAU'
    );



final Hanzada = Student(
    id: 3,
    name: 'Hanzada', 
    surName: 'Maratova', 
    age: 23,
    email:'hanzada@mail',
    group:1,
    image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnQOdW7I7GHgiGSrVK0s-bZolcvu3jRvVCZg&usqp=CAU'
    );



final Mirbek = Student(
    id: 4,
    name: 'Mirbek ', 
    surName: 'Amanov',
    age: 22,
    email:'mirbek@mail', 
    group:3,
    image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnQOdW7I7GHgiGSrVK0s-bZolcvu3jRvVCZg&usqp=CAU'
    );



final Aybek = Student(
    id: 5,
    name: 'Aybek',
    surName: 'Aidarov',
    age: 20, 
    email:'Aybek@mail', 
    group:5,
    phone: '+996500101010',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnQOdW7I7GHgiGSrVK0s-bZolcvu3jRvVCZg&usqp=CAU' 
    );

    List studentter=<Student> [
      Daniar,
      Aybek,
      Hanzada,
      Mirbek,
      Dinara
    ];