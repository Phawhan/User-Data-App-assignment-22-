import "package:flutter/material.dart";
import 'package:users/constants/styles.dart';
import 'package:users/constants/variables.dart';
import 'package:users/screens/show_users_page.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  int count = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  List<User> allUsers = [];
  void onSubmit() {
    setState(() {
      count++;
      allUsers.add(User(count, nameController.text, ageController.text));
      print(count);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ShowUsers(allUsers: allUsers)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                createScreenTitle,
                style: createScreenTitleStyle,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Center(
            child: Column(
              children: [
                Text(createScreenMessage, style: createScreenMessageStyle),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 0),
                  child: Text(
                    "Enter Name:",
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 75, right: 75),
                    child: TextField(
                      controller: nameController,
                    )),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 0),
                  child: Text(
                    "Enter Age:",
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 75, right: 75),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: ageController,
                    )),
                ElevatedButton(
                  onPressed: () => onSubmit(),
                  child: const Text(
                    "Submit",
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
