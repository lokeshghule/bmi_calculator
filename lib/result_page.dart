import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final Color resultColor;
  final String bmiValue;
  final String description;

  ResultPage(
      {required this.result,
      required this.resultColor,
      required this.bmiValue,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 6.0),
            child: Text(
              "RESULT",
              style: kNumberTextStyle,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0x99272844),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result,
                      style: kLabelTextStyle.copyWith(
                          color: resultColor, fontSize: 20.0),
                    ),
                    Text(
                      bmiValue,
                      style: kNumberTextStyle.copyWith(fontSize: 80.0),
                    ),
                    Text(
                      description,
                      style: kLabelTextStyle.copyWith(
                          color: Colors.white, fontSize: 20.0),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    "RE-CALCULATE",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              color: kBottomContainterColor,
              width: double.infinity,
              height: h * 0.09,
            ),
          ),
        ],
      ),
    );
  }
}
