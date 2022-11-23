import 'package:flutter/material.dart';

class TeamReport extends StatefulWidget {
  const TeamReport({Key? key}) : super(key: key);

  @override
  State<TeamReport> createState() => _TeamReportState();
}

class _TeamReportState extends State<TeamReport> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("image/horse1.jpg"), fit: BoxFit.cover)),
          child: Center(
              child: Text(
            'Team Report',
            style: TextStyle(fontSize: 50, color: Colors.white),
          )),
        ),
      );
}
