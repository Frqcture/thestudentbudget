import 'package:flutter/material.dart';
import 'payment_info_summaries.dart';

class SummaryTab extends StatefulWidget {
  SummaryTab({Key? key}) : super(key: key);

  @override
  State<SummaryTab> createState() => _SummaryTabState();
}

class _SummaryTabState extends State<SummaryTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color.fromARGB(255, 224, 224, 224))
            ),
      margin: const EdgeInsets.all(20),
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
                  style: TextStyle(fontSize: 20,)
                ),
              ),
            ],
          ),
        ),
        PaymentInfoSummary(),
        PaymentInfoSummary(),
        PaymentInfoSummary(),
      ]),
    );
  }
}