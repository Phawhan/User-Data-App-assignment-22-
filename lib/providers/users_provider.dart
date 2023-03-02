
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:users/constants/variables.dart';
import 'package:users/screens/show_users_page.dart';

class Notifier extends ChangeNotifier {
  List<User> allUsers = [];
  int count = 0;

  void onSubmit(name, age) {
    count++;
    allUsers.add(User(count, name, age));
    print(count);
    Navigator.push(context as BuildContext,
        MaterialPageRoute(builder: (context) => ShowUsers(allUsers: allUsers)));
  }
}
