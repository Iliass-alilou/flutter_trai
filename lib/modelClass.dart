import 'package:flutter/material.dart';

class UsersModel {
  final int  id ;
  final String name ;
  final String phone;

  UsersModel ({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class ModelClass extends StatelessWidget {
  List <UsersModel> users = [
    UsersModel(
      id: 1,
      name: "ilass",
      phone: "0654240953"
    ),
    UsersModel(
        id: 2,
        name: "ilass",
        phone: "0654240953"
    ),
    UsersModel(
        id: 3,
        name: "ilass",
        phone: "0654240953"
    ),
    UsersModel(
        id: 4,
        name: "ilass",
        phone: "0654240953"
    ),
    UsersModel(
        id: 5,
        name: "ilass",
        phone: "0654240953"
    ),
    UsersModel(
        id: 6,
        name: "ilass",
        phone: "0654240953"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Usrs",
        ),
      ),
      body : Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
            itemBuilder: (context , index) => Users (users[index]),
            separatorBuilder: (context , index) => Container(
              width: double.infinity,
              height: 2.0,
              color: Colors.grey[300],
            ),
            itemCount: users.length,
        ),
      ),
    );
  }
  Widget Users (UsersModel user) => Row(
    children: [
      CircleAvatar(
        radius:40.0,
        backgroundColor: Colors.blue,
        child: Text(
          '${user.id}',
          style: TextStyle(
              color: Colors.black,
              fontSize: 40.0
          ),
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${user.name}',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Text(
            '${user.phone}',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
            ),
          ),
        ],
      ),

    ],
  );
}
