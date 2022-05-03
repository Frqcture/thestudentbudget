import 'package:flutter/material.dart';

class SummaryTab extends StatefulWidget {
  SummaryTab({Key? key}) : super(key: key);

  @override
  State<SummaryTab> createState() => _SummaryTabState();
}

class _SummaryTabState extends State<SummaryTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
      child: Column(children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: const Icon(
                  Icons.abc
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const  Text(
                  'TITLE',
                  style: TextStyle(fontSize: 20,),),
              ),
            ],
          ),
        )
      ]),
    );
  }
}