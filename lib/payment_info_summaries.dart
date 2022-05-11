import 'package:flutter/material.dart';

class PaymentInfoSummary extends StatefulWidget {
  const PaymentInfoSummary({Key? key, required this.paidTo, required this.amount}) : super(key: key);

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
                      style: const TextStyle(fontSize: 18),
                      ),
                  ),
                  Container(
                    child: Text(
                      '£'+widget.amount.toString(),
                      style: const TextStyle(fontSize: 15)),
                  )
                ],
              )
            ]),
          );
  }
}

class NoCategoryPaymentInfo extends StatefulWidget {
  const NoCategoryPaymentInfo({Key? key, required this.paidTo, required this.amount}) : super(key: key);

  final String paidTo;
  final double amount;

  @override
  State<NoCategoryPaymentInfo> createState() => _NoCategoryPaymentInfoState();
}

class _NoCategoryPaymentInfoState extends State<NoCategoryPaymentInfo> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(context: context, 
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: const Text(
                    'Change Category',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.car_rental),
                  title: Text('Car Payments')
                ),
                const ListTile(
                  leading: Icon(Icons.local_grocery_store),
                  title: Text('Shopping'),
                )
              ]
            );
          }
        );
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(widget.paidTo, style: const TextStyle(fontWeight: FontWeight.bold),),
                Text('£'+widget.amount.toString(), style: const TextStyle(fontWeight: FontWeight.bold))
              ],
            )
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Row(children: const <Widget>[
              Icon(Icons.abc_outlined),
              Text(
                'CATEGORY NAME'
              )
            ],)
            ),
        ],)
      )
    );
  }
}