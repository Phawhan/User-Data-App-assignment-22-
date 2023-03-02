import 'package:flutter/material.dart';
import 'package:users/constants/styles.dart';
import 'package:users/constants/variables.dart';
import 'package:users/widgets/dalog_box.dart';
import 'package:users/widgets/edit_dialog_box.dart';
import 'dalog_box.dart';

class UserCard extends StatelessWidget {
  User user;
  var index;
  Function delete;
  Function edit;
  UserCard(
      {super.key,
      required this.user,
      required this.index,
      required this.delete,
      required this.edit});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("${index + 1}"),
        Text(user.name),
        Text(user.age as String),
        ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext) {
                  return EditDialogBox(user: user, buttonFunction: edit);
                });
          },
          child: const Icon(Icons.edit),
        ),
        ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext) {
                  return DialogBox(
                      buttonFunction: delete,
                      dialogBoxData: deleteDialogVariable);
                });
          },
          child: const Icon(Icons.delete),
        ),
      ],
    );
  }
}
