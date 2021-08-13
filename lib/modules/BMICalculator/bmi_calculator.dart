
import 'dart:math';

import 'package:first_app/modules/BMICalculator/Resault_BMI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_Calcualtor extends StatefulWidget {

  @override
  _BMI_CalcualtorState createState() => _BMI_CalcualtorState();
}

class _BMI_CalcualtorState extends State<BMI_Calcualtor> {
  bool isMale =true;
  double height = 100;
  int weight= 40;
  int age = 20 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         isMale = true;
                       });
                     },
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image(
                             image: AssetImage(
                               'assets/images/male.png',
                             ),
                             width: 110.0,
                             height: 110.0,
                           ),
                           SizedBox(
                             height: 15.0,
                           ),
                           Text(
                             'MALE',
                             style: TextStyle(
                               fontSize: 25.0
                             ),
                           )
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0,),
                         //color: Colors.grey[300],
                         color: isMale ? Colors.blue : Colors.grey[300],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 20.0,
                 ),
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         isMale =false;
                       });
                     },
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image(
                             image: AssetImage(
                               'assets/images/female.png',
                             ),
                             width: 110.0,
                             height: 110.0,
                           ),
                           SizedBox(
                             height: 15.0,
                           ),
                           Text(
                             'FEMALE',
                             style: TextStyle(
                                 fontSize: 25.0
                             ),
                           )
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0,),
                         color: !isMale ?Colors.blue : Colors.grey[300],
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 25.0
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20.0,

                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 80,
                      max: 220,
                      onChanged: (value){
                        setState(() {
                          height =value;
                        });
                      },
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 25.0
                            ),
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                                heroTag: 'age--',
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight ++;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                                heroTag: 'age++',
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                                fontSize: 25.0
                            ),
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.grey[300],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Container(
            color: Colors.redAccent,
            width: double.infinity,
            height: 60.0,
            child: MaterialButton(
                onPressed: ()
                {
                  double resault = weight/ pow(height/100, 2) ;
                  print(resault);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Resault_BMI(
                        resault: resault,
                        age: age,
                        isMale:isMale ,
                      ),
                    ),
                  );
                },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
