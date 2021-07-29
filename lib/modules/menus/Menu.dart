import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffC4C4C4),

        leading: IconButton(
          icon: Container(
            child: Icon(
              Icons.arrow_back,
              size: 29,
              color: Color(0xff000000),
            ),
          ),
          onPressed: () {
            print("this is new page");
          },
        ),
        title: Text(
            'Restaurants',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 18,
            //centerTitle:
            fontFamily: 'rasa',
          ),
        ),
        actions: [

          Container(
            margin: const EdgeInsets.only(top: 8.0 ,bottom: 8.0),
            decoration: BoxDecoration(
              color: Color(0xff1A1C2B),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),
            child: FlatButton.icon(
              onPressed: (){
                print("cart");
              },
              label: Container(
                //margin:EdgeInsets.only(left: 1),
                child: Text(
                    "Cart",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
              icon:Icon(
                Icons.shopping_cart_sharp,
                color: Color(0xffFFFFFF),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0 ,bottom: 8.0),
            decoration: BoxDecoration(
              color: Color(0xffC42625),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),
            child: FlatButton.icon(
              onPressed: (){
                print("Profile");
              },
              label: Text(
                  "Profile",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                ),
              ),
              icon:Icon(
                Icons.person,
                  color: Color(0xffFFFFFF),
              ),

            ),
          ),
        ],

      ),
      body:SingleChildScrollView(
        child: Column(

          children:[
            Container(
              // width: double.infinity,
              height: 150.0,
              //margin:  EdgeInsets.only(bottom: 0.0),
              decoration: new BoxDecoration(
                color: Color(0xffC4C4C4),
                borderRadius: new BorderRadius.vertical(
                  bottom: new Radius.elliptical(
                      MediaQuery.of(context).size.width, 210.0
                  ),
                ),
              ),
            ),
            Container(
              // margin:  EdgeInsets.only(top: 0.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15,),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image(
                        image: NetworkImage("https://res.cloudinary.com/glovoapp/h_225,f_auto,q_auto/Stores/krqvph8t571vng84z4zh"),
                        width:335 ,
                        height:137,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: 335,
                        //padding: const EdgeInsetsDirectional.Only(start: , end:),
                        child: Text(
                          "Burger King",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize:36,
                            fontFamily:'Rasa',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
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
