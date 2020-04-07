import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  factory LoginPage({Map<String, List<String>> args}) {
    return LoginPage._(int.parse(args["id"][0]));
  }

  LoginPage._(this.id);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login: $id"),
      ),
    );
  }
}
