
import 'package:first_app/modules/BMICalculator/bmi_calculator.dart';
import 'package:flutter/material.dart';

class Resault_BMI extends StatelessWidget {

  final int age ;
  final double resault ;
  final bool isMale;


  Resault_BMI({
    required this.resault,
    required this.isMale,
    required this.age,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text(
          'BMI Resalut'
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender : ${isMale ? 'Male' : 'Female'} ',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Result : $resault ',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Age : $age ',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
