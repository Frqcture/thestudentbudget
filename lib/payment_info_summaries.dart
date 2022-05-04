import 'package:flutter/material.dart';

class PaymentInfoSummary extends StatefulWidget {
  PaymentInfoSummary({Key? key, required this.paidTo, required this.amount}) : super(key: key);

  final String paidTo;
  final double amount;

  @override
  State<PaymentInfoSummary> createState() => _PaymentInfoSummaryState();
}

class _PaymentInfoSummaryState extends State<PaymentInfoSummary> {
  // String paidTo;
  // double amount;

  // _PaymentInfoSummaryState(this.paidTo, this.amount);

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      widget.paidTo,
                      style: TextStyle(fontSize: 18),
                      ),
                  ),
                  Container(
                    child: Text(
                      '£'+widget.amount.toString(),
                      style: TextStyle(fontSize: 15)),
                  )
                ],
              )
            ]),
          );
  }
}