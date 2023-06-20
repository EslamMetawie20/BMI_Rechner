import 'package:flutter/material.dart';

import 'BMI.dart';


class BMI_Rechner extends StatefulWidget {
  const BMI_Rechner({Key? key}) : super(key: key);

  @override
  State<BMI_Rechner> createState() => _BMI_RechnerState();
}
int x=0;
bool geschlecht=true;
double grosse=170;
int alter=22;
int gewicht=70;
class _BMI_RechnerState extends State<BMI_Rechner> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: const Icon(Icons.man,size: 35,),
            title: Text("BMI Rechner", style: TextStyle(fontSize: 30),)
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              geschlecht =false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: !geschlecht? Colors.blue : Colors.white10,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.male, color: Colors.white,size: 150,),
                                Text("Männlich",style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),)

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              geschlecht = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: geschlecht? Colors.blue:Colors.white10,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.female, color: Colors.white,size: 150,),
                                Text("Weiblich",style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),)

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Größe",
                          style: TextStyle(fontSize: 25, color: Colors.white, ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              "${grosse.round()}",
                              style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "cm",
                              style: TextStyle(fontSize: 25, color: Colors.white, ),
                            ),
                          ],
                        ),
                        Slider(
                          value: grosse,
                          min: 150,
                          max: 200,
                          onChanged: ((value){
                            setState(() {
                              grosse=value;
                            });
                          }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Alter",
                                style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${alter}",
                                style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      alter++;
                                    });
                                  },
                                    child: Icon(Icons.add,size: 25,),

                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      alter--;
                                    });
                                  },
                                    child: Icon(Icons.minimize,size: 25,),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Gewicht",
                                style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "$gewicht",
                                style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      gewicht++;
                                    });
                                  },
                                    child: Icon(Icons.add,size: 25,),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      gewicht--;
                                    });
                                  },
                                    child: Icon(Icons.minimize,size: 25,),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BMI()),);
                    },
                    child: Text(
                      "Rechnen",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  )
                  ,
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
