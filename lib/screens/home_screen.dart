// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/model/user_model.dart';

import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

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
                            onTap: () {},
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
                            onTap: () {},
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
                            onTap: () {},
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
                            onTap: () {},
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
                )
              ],
            )

            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,

            //   children: <Widget>[

            //     // SizedBox(
            //     //   height: 150,
            //     //   child: Image.asset("assets/logo.png", fit: BoxFit.contain),
            //     // ),
            //     const Text(
            //       "Welcome to Home",
            //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //     ),
            //     const SizedBox(
            //       height: 10,
            //     ),
            //     Text(
            //       "${loggedInUser.firstName} ${loggedInUser.secondName}",
            //       style: TextStyle(
            //           color: Colors.black54, fontWeight: FontWeight.w500),
            //     ),
            //     Text(
            //       "${loggedInUser.email}",
            //       style: TextStyle(
            //           color: Colors.black54, fontWeight: FontWeight.w500),
            //     ),
            //     SizedBox(
            //       height: 15,
            //     ),
            //     ActionChip(
            //         label: Text("Logout"),
            //         onPressed: () {
            //           logout(context);
            //         }),
            //   ],
            // ),

            ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        //selectedFontSize: ,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.blue,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: ('Order Record'),
              backgroundColor: Colors.orangeAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: ('Team Report'),
              backgroundColor: Colors.pinkAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ('My Account'),
              backgroundColor: Colors.greenAccent),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
