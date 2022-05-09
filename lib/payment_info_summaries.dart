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

class NoCategoryPaymentInfo extends StatefulWidget {
  NoCategoryPaymentInfo({Key? key, required this.paidTo, required this.amount}) : super(key: key);

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
        showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (BuildContext bc) {
              return Container(
                height: SizeConfig.screenHeight * 0.6,
               
                child: Padding(
                  padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.4),
                  child: Container(
                  
                    child: SingleChildScrollView(
                      child:
                        
                          Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 1.5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            
                          ],
                        ),
                      ),
                     
                    ),
                  ),
                ),
              );
            });
      },
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(widget.paidTo, style: TextStyle(fontWeight: FontWeight.bold),),
                Text('£'+widget.amount.toString(), style: TextStyle(fontWeight: FontWeight.bold))
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