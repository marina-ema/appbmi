import 'package:app/screen.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget {
  String gender;
  double height;
  int weight;
  int age;
  double Result;

  result(
      {required this.gender,
      required this.height,
      required this.weight,
      required this.age,
      required this.Result});
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Your Result ",
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Color(0xff111427),
              ),
              height: 590,
              child: Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Gender : $gender",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        "Height :${height.round()}",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        "Weight :$weight ",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        "Age :$age ",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        "Result = ${Result.round()}",
                        style: TextStyle(fontSize: 35, color: Colors.green),
                      ),
                    ]),
              ),
            ),
          ),
          Container(
              width: double.infinity,
              height: 60,
              color: Color(0xffd93558),
              child: MaterialButton(
                onPressed: () {
                  //double result = weight / pow(height, 2);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => bmiscreen()));
                },
                child: Text(
                  "RE-CALCULATE",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
