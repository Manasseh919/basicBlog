import 'dart:math';

import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

enum FormType { login, register }

class _LoginRegisterPageState extends State<LoginRegisterPage> {
//methods

  final formKey = GlobalKey<FormState>();
  FormType _formType = FormType.login;
  String _email = "";
  String _password = "";

  void validateAndSave() {}

  void moveToRegister() {
    formKey.currentState?.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState?.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

/////design
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Blog App"),
      ),
      body: Container(
        margin: const EdgeInsets.all(15.0),
        child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: createInputs() + createButtons(),
            )),
      ),
    );
  }

  List<Widget> createInputs() {
    return [
      const SizedBox(
        height: 10.0,
      ),
      logo(),
      const SizedBox(
        height: 20.0,
      ),
      TextFormField(
        decoration: const InputDecoration(labelText: "Email"),
        // validator: (value) {
        //   return value.isEmpty ? "Email is required" : null;
        // },
        // onSaved: (value) {
        //   return _email = value;
        // },
      ),
      const SizedBox(
        height: 10.0,
      ),
      TextFormField(
        decoration: const InputDecoration(labelText: "Password"),
      ),
      const SizedBox(
        height: 20.0,
      ),
    ];
  }

  logo() {
    return Hero(
        tag: "images",
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 110.0,
          child: Image.network(
              'https://i.pinimg.com/474x/9f/20/85/9f2085c60697b801ccc8d5efc3a27307.jpg'),
        ));
  }

  List<Widget> createButtons() {
    return [
      ElevatedButton(
        onPressed: validateAndSave,
        style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.green)),
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      TextButton(
        onPressed: moveToRegister,
        style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.green)),
        child: const Text(
          "Not having an Account? Create Account",
          style: TextStyle(fontSize: 14.0, color: Colors.grey),
        ),
      ),
    ];
  }
}
