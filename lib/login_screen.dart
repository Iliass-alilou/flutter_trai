import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted:(value)
                {
                  print(value);
                },
                onChanged: (String value)
                {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: "Email Address",
                  border:OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 20.00,
              ),
              //by default TextFormField double.enfinity
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted:(value)
                {
                  print(value);
                },
                onChanged: (String value)
                {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: "Password",
                  border:OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              SizedBox(
                height: 20.00,
              ),
              Container(
                width: double.infinity,
                color:Colors.blue,
                child: MaterialButton(
                  onPressed: ()
                  {
                    print(emailController.text);
                    print(passwordController.text);
  },

                  child: Text(
                    "Login",
                     style: TextStyle(
                       color: Colors.white
                     ),
                  ),
                ),
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
