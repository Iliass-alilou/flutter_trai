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

Widget textField ({
  required TextEditingController controller,
  required TextInputType type,
  //Function? onSubmit,
  //Function? onChange,
  Function? validate,
  required String label,
  required IconData Prefexicon,
  bool isPassword =false,
  IconData? Suffixicon,
  Function? obsecure,
  required Function onTap,
}) => TextFormField(
  controller: controller,
  keyboardType: type,
  //onFieldSubmitted:onSubmit!(),
  //onChanged: onChange!(),
  //validator: validate!(),
  onTap: onTap(),
  obscureText: isPassword,
  decoration: InputDecoration(
    labelText: label,
    border:OutlineInputBorder(),
    prefixIcon: Icon(
      Prefexicon,
    ),
    suffixIcon:Suffixicon != null ? IconButton(
      icon: Icon(
        Icons.remove_red_eye,
      ),
      onPressed: obsecure!(),
    ):null ,
  ),
);