import 'package:flutter/material.dart';

class TeamMechanism extends StatefulWidget {
  const TeamMechanism({Key? key}) : super(key: key);

  @override
  State<TeamMechanism> createState() => _TeamMechanismState();
}

class _TeamMechanismState extends State<TeamMechanism> {
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
                image: AssetImage("image/tm.jpg"), fit: BoxFit.cover)),
        child: Center(
            child: Text(
          'Team Mechanism',
          style: TextStyle(fontSize: 50),
        )),
      ),
    );
  }
}
