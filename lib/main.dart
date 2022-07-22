import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'bluetooth_connection.dart';
//import 'firebase_options.dart';
import 'package:splashscreen/splashscreen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'mental-pin-test-v2',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new AfterSplash(),
      image: new Image.asset('assets/mental_pin_logo.png'),
      photoSize: 100.0,
      backgroundColor: Color(0xFF3A3FEB),
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterBlueApp();
  }
}
