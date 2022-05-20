import 'package:flutter/material.dart';
import '../HomeScreenWidgets/home_screen.dart';

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
                onPressed: () {
                  const HomeScreen();
                }, 
                child: const Text('Login!'))
            ],
          )
          ),
      ],)
    );
  }
}