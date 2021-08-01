import 'package:first_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  var isPassword = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40.00,
              ),
              //by default TextFormField double.enfinity
              textField(
                controller: emailController,
                label: "Email Address",
                Prefexicon:Icons.email ,
                type: TextInputType.emailAddress,
                // validate:(String value){
                //   if(value.isEmpty){
                //     return 'Email should Not be Empty';
                //   }
                //   return null;
                // },
                // onChange:( value){
                //   print(value);
                // },
                // onSubmit:( value){
                //   print(value);
                // },
              ),
              SizedBox(
                height: 20.00,
              ),
              //by default TextFormField double.enfinity
              textField(
                  controller: passwordController,
                  label: "Password",
                  Prefexicon:Icons.lock ,
                  type: TextInputType.visiblePassword,
                  // validate:(String value){
                  //   if(value.isEmpty){
                  //     return 'password Should not be empty';
                  //   }
                  //   return null;
                  // },
                  // onChange:( value){
                  //   print(value);
                  // },
                  // onSubmit:( value){
                  //   print(value);
                  // },
                Suffixicon: isPassword ? Icons.visibility : Icons.visibility_off,
                isPassword: isPassword,
                obsecure: (){
                    setState(() {
                      isPassword = !isPassword;
                    });
                },

              ),
              SizedBox(
                height: 20.00,
              ),
              LoginButton(
                text: 'login',
                function: ()
                {
                  // if(_formKey.currentState!.validate())
                  // {
                  //   print(emailController.text);
                  //   print(passwordController.text);
                  // }
                  print ("xxx");
                }
              ),
              SizedBox(
                height: 20.00,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don\'t have an a account? ",
                    style: TextStyle(

                    ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        "Register Now",
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
