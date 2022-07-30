import 'package:flutter/material.dart';
import 'package:glarefirst/constants.dart';
import 'package:glarefirst/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'G Plant App',
      theme: ThemeData(
          scaffoldBackgroundColor: gBackgroundColor,
          primaryColor: gPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: gTextColor)),
      home: HomeScreen(),
    );
  }
}
