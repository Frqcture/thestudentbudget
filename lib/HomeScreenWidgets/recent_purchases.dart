import 'package:flutter/material.dart';
import 'payment_info_summaries.dart';

class RecentPayments extends StatefulWidget {
  RecentPayments({Key? key}) : super(key: key);

  @override
  State<RecentPayments> createState() => _RecentPaymentsState();
}

class _RecentPaymentsState extends State<RecentPayments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TheStudentBudget'),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
        child: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: const Text(
              'Recent Payments:',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: const Color.fromARGB(255, 224, 224, 224))
            ),
              child: Container(
                // padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                margin: const EdgeInsets.fromLTRB(15, 12, 15, 10),
                child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  NoCategoryPaymentInfo(paidTo: 'Joe', amount: 123.45, category: 'Car Payments', icon: Icon(Icons.device_unknown),),
                  NoCategoryPaymentInfo(paidTo: 'Joe', amount: 123.45, category: 'Shopping ', icon: Icon(Icons.device_unknown),),
                ],
              ),
            )
          )
        ],)
      )
    );
  }
}