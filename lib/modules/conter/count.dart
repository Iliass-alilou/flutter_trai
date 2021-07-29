
import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  //1. constructor
  //2. intialState
  //3. widget

  var count = 2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counting Number',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton (
              onPressed: ()
              {
                setState(() {
                  count --;
                  print(count);
                });
              },
              child:CircleAvatar (
                radius: 50.0,
                child: Text(
                  'Minus',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
              ),
              child: Text(
                '$count',
                style: TextStyle(
                  fontSize: 80.0,
                ),
              ),
            ),
            TextButton (
              onPressed: ()
              {
                setState(() {
                  count ++;
                  print(count);
                });
              },
              child:CircleAvatar (
                radius: 50.0,
                child: Text(
                  'Plus',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
