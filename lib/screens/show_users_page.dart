import 'package:flutter/material.dart';
import 'package:users/widgets/user_card.dart';
import 'package:users/constants/styles.dart';
import 'package:users/constants/variables.dart';

class ShowUsers extends StatefulWidget {
  List<User> allUsers = [];
  ShowUsers({super.key, required this.allUsers});

  @override
  State<ShowUsers> createState() => _ShowUsersState();
}

class _ShowUsersState extends State<ShowUsers> {
  void initState() {
    super.initState();
    print(widget.allUsers);
  }

  delete(id) {
    print("******deleting******");
    setState(() {
      // id++;
      widget.allUsers.removeAt(id);
    });
  }

  edit(id) {
    print("******editing******");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("S.No"),
              Text("Name"),
              Text("Age"),
              Text("Edit"),
              Text("Delete"),
            ]),
      ),
      ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.allUsers.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: UserCard(
              user: widget.allUsers[index],
              delete: () => delete(index),
              edit: () => edit(index),
              index: index,
            ),
          );
        },
      ),
    ]));
  }
}
