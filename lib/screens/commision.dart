import 'package:flutter/material.dart';

class Commision extends StatefulWidget {
  const Commision({Key? key}) : super(key: key);

  @override
  State<Commision> createState() => _CommisionState();
}

class _CommisionState extends State<Commision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/home2.jpg"), fit: BoxFit.cover)),
        child: Center(
            child: Text(
          'Commision is coming soon ',
          style: TextStyle(fontSize: 50),
        )),
      ),
    );
  }
}
