import 'package:flutter/material.dart';
import 'package:users/constants/variables.dart';

class EditDialogBox extends StatefulWidget {
  User user;
  Function buttonFunction;
  EditDialogBox({super.key, required this.user, required this.buttonFunction});
  @override
  State<EditDialogBox> createState() => _EditDialogBoxState();
}

class _EditDialogBoxState extends State<EditDialogBox> {
  TextEditingController nameEditController = TextEditingController();
  TextEditingController ageEditController = TextEditingController();

  @override
  void initstate() {
    super.initState();
  }

  @override
  void dispose() {
    nameEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    nameEditController.text = widget.user.name;
    ageEditController.text = widget.user.age;
    return AlertDialog(
      title: Text("Edit User Details"),
      content: Column(
        children: [
          TextField(
            controller: nameEditController,
            decoration: InputDecoration(hintText: "Edit name"),
          ),
          TextField(
            controller: ageEditController,
            decoration: InputDecoration(hintText: "Edit age"),
            // controller: nameEditingController(text: widget.name),
          )
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () {
            widget.user.name = nameEditController.text;
            widget.user.age = ageEditController.text;
            widget.buttonFunction();
            Navigator.of(context).pop();
          },
          child: Text("Edit"),
        ),
      ],
    );
  }
}
