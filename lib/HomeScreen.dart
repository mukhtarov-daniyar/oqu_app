import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:oqu_app/PdfScreen/pdfScreen.dart';
import 'package:oqu_app/Screens/profile_screen.dart';

import 'Welcome/welcome_screen.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.refresh, color: Colors.white),
        //   onPressed: () {},
        // ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
          // TextButton(
          //   onPressed: () {},
          //   child: Padding(
          //     padding: const EdgeInsets.all(10.0),
          //     child: Icon(Icons.search, color: Colors.white),
          //   ),
          // ),
          TextButton(
            onPressed: () {
              auth.signOut().then((_) {
                Route newRoute =
                    MaterialPageRoute(builder: (context) => WelcomeScreen());
                Navigator.pushReplacement(context, newRoute);
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.login_outlined, color: Colors.white),
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  Colors.amberAccent[700],
                  Colors.brown,
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        title: Text("OQU app"),
        centerTitle: true,
      ),
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'ҚИЯЛ-ҒАЖАЙЫП ЕРТЕГІЛЕР',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PdfScreen()));
                    },
                    child: Image.asset('assets/images/ertekter.jpeg'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
