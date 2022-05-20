import 'package:flutter/material.dart';
<<<<<<< HEAD
import '../HomeScreenWidgets/home_screen.dart';
=======
>>>>>>> 2a592f9a8c09f278151759e58f7b1c4d48a7b680

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginUser = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Form(
          key: _loginUser,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                //key: _unameInput,
                decoration: const InputDecoration(
                  hintText: 'Email'
                ),
              ),
              TextFormField(
                //key: _pwordInput,
                decoration: const InputDecoration(
                  hintText: 'Password'
                ),
              ),
              ElevatedButton(
<<<<<<< HEAD
                onPressed: () {
                  const HomeScreen();
                }, 
=======
                onPressed: () {}, 
>>>>>>> 2a592f9a8c09f278151759e58f7b1c4d48a7b680
                child: const Text('Login!'))
            ],
          )
          ),
      ],)
    );
  }
}