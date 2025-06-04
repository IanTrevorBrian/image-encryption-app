import 'package:securex_classified/Authenticate/Authenticate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
      theme: ThemeData.dark().copyWith(textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.black54),
      ),),
    );
  }
}
