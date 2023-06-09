import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oqu_app/HomeScreen.dart';
import 'package:oqu_app/PdfScreen/pdfScreen.dart';
import 'package:oqu_app/SplashScreen/splashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oqu app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: SplashScreen(),
    );
  }
}
