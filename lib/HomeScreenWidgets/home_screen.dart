import 'package:flutter/material.dart';
import 'summary_tab.dart';
import 'non_categorized_payments.dart';
import 'recent_purchases.dart';
import '../firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  int userBalance = 1000;

    final tabs = [const HomeScreen()];
  int selectedScreen = 0;

  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;

  final user = <String, dynamic>{
    "Testname":"joemama",
    "TestNum": 987.65,
  };

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
      Column(
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
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color.fromARGB(255, 224, 224, 224))
            ),
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
            children: <Widget>[
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Column(children: <Widget>[
                        const Text('Left to Spend:',),
                        Text('£$userBalance',)

                      ],)
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Column(children: const <Widget>[
                        Text('Total for Month'),
                        Text('£2500')
                      ],)
                  )
                ],
                ),
              const LinearProgressIndicator(
                minHeight: 7,
                value: 0.7,
              )
            ]),
        ),
        ),
        const SummaryTab(paidTo: ["Joe", 'Molly','Lorenzo'], amount: [1.23,5.85,10.43], title: 'To be categorized', nav: NonCategorisedPaymentScreen(),),
        SummaryTab(paidTo: ['Lorenzo','Molly', 'Joe'], amount: [3.64,8.45,10.00], title: 'Recent Purchases', nav: RecentPayments()),
        const SummaryTab(paidTo: ['Molly','Joe','Lorenzo'], amount: [3.88,763.87, 9.01], title: 'Misc', nav: NonCategorisedPaymentScreen()),
      ],
    )
    ]);
  }
}