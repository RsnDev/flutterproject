import 'package:flutter/material.dart';

class TeamReport extends StatefulWidget {
  const TeamReport({Key? key}) : super(key: key);

  @override
  State<TeamReport> createState() => _TeamReportState();
}

class _TeamReportState extends State<TeamReport> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
            child: Text(
          'Team Report',
          style: TextStyle(fontSize: 50),
        )),
      );
}
