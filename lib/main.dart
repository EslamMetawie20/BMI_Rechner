import 'package:firstapp1/BMI.dart';
import 'package:firstapp1/BMI_Rechner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(New());
}

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMI_Rechner(),
    );
  }
}
