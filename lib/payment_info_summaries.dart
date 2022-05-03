import 'package:flutter/material.dart';

class PaymentInfoSummary extends StatefulWidget {
  PaymentInfoSummary({Key? key}) : super(key: key);

  @override
  State<PaymentInfoSummary> createState() => _PaymentInfoSummaryState();
}

class _PaymentInfoSummaryState extends State<PaymentInfoSummary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: const Text(
                    'PAID TO',
                    style: TextStyle(fontSize: 18),
                    ),
                ),
                Container(
                  child: const Text(
                    'amount',
                    style: TextStyle(fontSize: 15)),
                )
              ],
            )
          ]),
        );
  }
}