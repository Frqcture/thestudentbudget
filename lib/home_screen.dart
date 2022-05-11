import 'package:flutter/material.dart';
import 'package:TheStudentBudget/summary_tab.dart';
import 'non_categorized_payments.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  int userBalance = 1000;

  @override
  Widget build(BuildContext context) {
    return ListView(
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
        SummaryTab(paidTo: const ['Joe', 'Molly','Lorenzo'], amount: const [1.23,5.85,10.43], title: 'To be categorized', nav: const NonCategorisedPaymentScreen(),),
        SummaryTab(paidTo: const ['Lorenzo','Molly', 'Joe'], amount: const [3.64,8.45,10.00], title: 'Recent Purchases', nav: const NonCategorisedPaymentScreen()),
        SummaryTab(paidTo: const ['Molly','Joe','Lorenzo'], amount: const [3.88,763.87, 9.01], title: 'Misc', nav: const NonCategorisedPaymentScreen()),
      ],
    )
    ]);
  }
}