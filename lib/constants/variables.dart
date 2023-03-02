import "package:flutter/material.dart";

//variables

//Splash screen duration
int splashDuration = 5;
//Splash screen Message
String splashMessage = "Welcome";
//create user page varaibles
String createScreenTitle = "Create User";
String createScreenMessage = "User can create an account here ";

List<User> allUsers = [];


// user class for creating instances
class User {
  late int id;
  late String name;
  late String age;

  User(this.id, this.name, this.age);

  @override
  String toString() {
    return 'User{id:$id, name: $name, age: $age}';
  }
}

//dialog box onjects.

Map deleteDialogVariable = {
  'title': "Delete",
  'message': "Do you want to Delete ? ",
  'buttonText' : "Delete",
};
