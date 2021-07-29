import 'package:flutter/material.dart';

Widget LoginButton ({
   double width = double.infinity,
   Color background = Colors.blue,
   required String text,
   required Function function,

})=> Container(
  width: width,
  color:background,
  child: MaterialButton(
    onPressed: function() ,
    child: Text(
      text,
      style: TextStyle(
          color: Colors.white
      ),
    ),
  ),
);