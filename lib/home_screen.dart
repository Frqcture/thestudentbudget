import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int userBalance = 1000;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('£$userBalance'),
      ],
    );
  }
}
