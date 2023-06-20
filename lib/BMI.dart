import 'package:firstapp1/BMI_Rechner.dart';
import 'package:flutter/material.dart';

class BMI extends StatelessWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "BMI Ergebnisse",style: TextStyle(fontSize: 25),
        ),
        leading: Icon(Icons.man),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Geschlecht : ${!geschlecht==true? "Männlich" : "Weiblich"}", style: TextStyle(
              color: Colors.black,
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              "Größe : ${grosse.round()} cm", style: TextStyle(
              color: Colors.black,
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              "Alter : ${alter} Jahre", style: TextStyle(
              color: Colors.black,
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              "Gewicht : ${gewicht} KG", style: TextStyle(
              color: Colors.black,
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
