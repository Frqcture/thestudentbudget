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
        Container( 
          margin: const EdgeInsets.fromLTRB(0, 70, 0, 50),
          child: Column(
            children: <Widget>[ 
              Text(
                '£$userBalance',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ]
          )
        ),
        Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Expanded(
                      child: Column(children: <Widget>[
                        const Text('Left to Spend:'),
                        Text('£$userBalance',)
                      ],)
                    )
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    alignment: Alignment.topRight,
                    child: Expanded(
                      child: Column(children: const <Widget>[
                        Text('Total for Month'),
                        Text('£2500')
                      ],)
                    )
                  ),
                ],
              ),
              ),
              const LinearProgressIndicator(
                minHeight: 7,
                value: 0.7,
              )
            ]),
        ),
      ],
    );
  }
}