import 'package:flutter/material.dart';

class OrderRecord extends StatefulWidget {
  const OrderRecord({Key? key}) : super(key: key);

  @override
  State<OrderRecord> createState() => _OrderRecordState();
}

class _OrderRecordState extends State<OrderRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/order.jpg"), fit: BoxFit.cover)),
        child: Center(
            child: Text(
          'OrderRecord',
          style: TextStyle(fontSize: 50),
        )),
      ),
    );
  }
}
