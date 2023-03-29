import 'package:flutter/material.dart';

import 'user_model.dart';



class UsersScreen extends StatelessWidget {

  //1.build item
  //.build list
  //3.add item to list

  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Besan',
      phone: '+201099682110',
    ),
    UserModel(
      id: 2,
      name: 'Sameh',
      phone: '+201169682110',
    ),
    UserModel(
      id: 3,
      name: 'Besan Sameh',
      phone: '+201169689110',
    ),
    UserModel(
      id: 4,
      name: 'Sarah',
      phone: '+201099682110',
    ),
    UserModel(
      id: 5,
      name: 'Amna',
      phone: '+201169682110',
    ),
    UserModel(
      id: 6,
      name: 'Aya',
      phone: '+201169689110',
    ),
    UserModel(
      id: 7,
      name: 'Menna',
      phone: '+201099682110',
    ),
    UserModel(
      id: 8,
      name: 'Besan Sameh',
      phone: '+201169682110',
    ),
    UserModel(
      id: 9,
      name: 'Zooz Ayman',
      phone: '+201169689110',
    ),
    UserModel(
      id: 10,
      name: 'Ziad Ayman',
      phone: '+201099682110',
    ),
    UserModel(
      id: 11,
      name: 'Youssef Ayman',
      phone: '+201169682110',
    ),
    UserModel(
      id: 12,
      name: 'Zooz Ayman',
      phone: '+201169689110',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body:ListView.separated(
        itemBuilder:(context, index) => builtUSerItem(users[index]) ,
        separatorBuilder:(context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget builtUSerItem(UserModel user) =>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width:20.0 ,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:  MainAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
