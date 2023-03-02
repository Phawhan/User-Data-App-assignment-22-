import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  Function buttonFunction;
  var dialogBoxData;
  DialogBox(
      {super.key, required this.buttonFunction, required this.dialogBoxData});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Delete'),
      content: Text('Do you want to Delete?'),
      actions: <Widget>[
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          onPressed: () {
            widget.buttonFunction();
            Navigator.of(context).pop();
          },
          child: Text("Delete"),
        )
      ],
    );
  }
}
