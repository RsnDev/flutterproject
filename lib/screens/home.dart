import 'package:flutter/material.dart';
import 'package:project/screens/commision.dart';
import 'package:project/screens/info.dart';
import 'package:project/screens/team_mech.dart';
import 'package:project/screens/tutorial.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Welcome"),
      //   centerTitle: true,
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/home2.jpg"), fit: BoxFit.cover)),
        child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.message,
                      size: 30.0,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.black,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 50, 12, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox.fromSize(
                        size: Size(76, 56),
                        //child: ClipOval(
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.yellow,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Tutorial(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                  size: 30,
                                ), // <-- Icon
                                Text(
                                  "Tutorial",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                      //  )
                      SizedBox.fromSize(
                        size: Size(76, 56),
                        //child: ClipOval(
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.yellow,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Info(),
                                  ));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.info,
                                  color: Colors.blue,
                                  size: 30,
                                ), // <-- Icon
                                Text(
                                  "Info",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                      //  )
                      SizedBox.fromSize(
                        size: Size(76, 56),
                        //child: ClipOval(
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.yellow,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TeamMechanism(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.group,
                                  color: Colors.blue,
                                  size: 30,
                                ), // <-- Icon
                                Text(
                                  "Team",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                      //  )
                      SizedBox.fromSize(
                        size: Size(76, 56),
                        //child: ClipOval(
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.yellow,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Commision(),
                                  ));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.money,
                                  color: Colors.blue,
                                  size: 30,
                                ), // <-- Icon
                                Text(
                                  "Commision",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ), // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ),
                      //  )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Position Tier",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 330,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/xz.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: 330,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/xz.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: 330,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/xz.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 95,
                      width: 330,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/xz.jpg"),
                              fit: BoxFit.cover)),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
