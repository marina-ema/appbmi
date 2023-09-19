import 'dart:math';

import 'package:flutter/material.dart';
import 'package:app/result.dart';

class bmiscreen extends StatefulWidget {
  const bmiscreen({super.key});

  @override
  State<bmiscreen> createState() => _State();
}

class _State extends State<bmiscreen> {
  bool isMale = true;
  String Gender = "Male";
  double Height = 180;
  int Weight = 30;
  int Age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0e21),
      appBar: AppBar(
        backgroundColor: Color(0xff0b0e21),
        title: Text(
          "BMI CALCULATIR",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                        Gender = "Male";
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              isMale ? Color(0xffd93558) : Color(0xff111427)),
                      height: 170,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white38),
                            )
                          ]),
                    ),
                  )),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                        Gender = "Female";
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              isMale ? Color(0xff111427) : Color(0xffd93558)),
                      height: 170,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white38),
                            )
                          ]),
                    ),
                  )),
                  SizedBox(
                    width: 5,
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Color(0xff111427),
              ),
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(color: Colors.white38, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${Height.round()}",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(color: Colors.white38, fontSize: 20),
                      ),
                    ],
                  ),
                  Slider(
                    thumbColor: Color(0xffd93558),
                    activeColor: Colors.white,
                    value: Height,
                    min: 80,
                    max: 220,
                    onChanged: (value) {
                      setState(() {
                        Height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff111427),
                  ),
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: TextStyle(fontSize: 20, color: Colors.white38),
                      ),
                      Text(
                        "$Weight ",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            heroTag: "btn1",
                            onPressed: () {
                              setState(() {
                                Weight--;
                              });
                            },
                            child: Icon(Icons.remove),
                            mini: true,
                          ),
                          FloatingActionButton(
                            heroTag: "btn2",
                            onPressed: () {
                              setState(() {
                                Weight++;
                              });
                            },
                            child: Icon(Icons.add),
                            mini: true,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff111427),
                  ),
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(fontSize: 20, color: Colors.white38),
                      ),
                      Text(
                        "$Age",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            heroTag: "btn3",
                            onPressed: () {
                              setState(() {
                                Age--;
                              });
                            },
                            child: Icon(Icons.remove),
                            mini: true,
                          ),
                          FloatingActionButton(
                            heroTag: "btn4",
                            onPressed: () {
                              setState(() {
                                Age++;
                              });
                            },
                            child: Icon(Icons.add),
                            mini: true,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          )),
          Container(
              width: double.infinity,
              height: 60,
              color: Color(0xffd93558),
              child: MaterialButton(
                onPressed: () {
                  double rsult = Weight / pow(Height / 100, 2);
                  print(rsult);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => result(
                          gender: Gender,
                          age: Age,
                          weight: Weight,
                          height: Height,
                          Result: rsult,
                        ),
                      ));
                },
                child: Text(
                  "CALCULATE",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
