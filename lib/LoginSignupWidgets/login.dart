import 'package:flutter/material.dart';
import '../HomeScreenWidgets/home_screen.dart';
import '../firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../LoginSignupWidgets/login.dart';


class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginUser = GlobalKey<FormState>();

  final String _emailInput = 'joedavidmoore.jm@gmail.com';
  final String _pwordInput = 'password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        child: Column(children: <Widget>[
        Form(
          key: _loginUser,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                //key: _emailInput,
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
                  //_loginUser.currentState?.save();
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _emailInput,
                    password: _pwordInput,
                  );
                }, 
                child: const Text('Login!'))
            ],
          )
          ),
      ],)
    )
    );
  }
}