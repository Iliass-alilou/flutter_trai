import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Messenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                "https://scontent.fcmn5-1.fna.fbcdn.net/v/t39.30808-6/222091150_2891160551198262_3072169956017879897_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGawGKexVmRkDc02bOEOlC7gxTkx8oQucmDFOTHyhC5yQMKsaKOmzkUWW-ez3RwWNEshpy-qkHSlY_AyojWcrrA&_nc_ohc=zlqmgmm65BcAX-C0H-8&_nc_ht=scontent.fcmn5-1.fna&oh=094fc7be800ac39731a9f3b57ef9c620&oe=61037DA2",
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                backgroundColor: Color(0xffF5F5F5),
                radius:15.0,
                child: Icon(
                  Icons.camera_alt,
                  size: 20.0,
                ),
              ),
          ),

          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              backgroundColor: Color(0xffF5F5F5),
              radius:15.0,
              child: Icon(
                Icons.edit,
                size: 20.0,
              ),
            ),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0,),
                  color: Color(0xffF5F5F5),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "search",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.00,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index) => buildStoryItem (),
                  separatorBuilder: (context , index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context , index) =>buildChatItem () ,
                  separatorBuilder: (context , index) => SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
  // 1.build item
  // 2. build list
  // 3. add item to list
     //arow function
  Widget buildChatItem () => Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              "https://scontent.fcmn5-1.fna.fbcdn.net/v/t39.30808-6/222091150_2891160551198262_3072169956017879897_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGawGKexVmRkDc02bOEOlC7gxTkx8oQucmDFOTHyhC5yQMKsaKOmzkUWW-ez3RwWNEshpy-qkHSlY_AyojWcrrA&_nc_ohc=zlqmgmm65BcAX-C0H-8&_nc_ht=scontent.fcmn5-1.fna&oh=094fc7be800ac39731a9f3b57ef9c620&oe=61037DA2",
            ),
          ),
          CircleAvatar(
            radius: 8.2,
            backgroundColor: Colors.white,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 1.0,
              end:1.0,                      ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),

        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Iliass Alilou",
              maxLines: 1,
              overflow: TextOverflow.ellipsis ,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Hello Mr Iliass this app it's amazing ,let\'s try to test it an have a fun discussion  ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,),
                  child: CircleAvatar(
                    radius: 2.5,
                    backgroundColor: Colors.black,
                  ),
                ),
                Text(
                  "12.55 PM",
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildStoryItem () => Container(
    width: 50,
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                "https://scontent.fcmn5-1.fna.fbcdn.net/v/t39.30808-6/222091150_2891160551198262_3072169956017879897_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGawGKexVmRkDc02bOEOlC7gxTkx8oQucmDFOTHyhC5yQMKsaKOmzkUWW-ez3RwWNEshpy-qkHSlY_AyojWcrrA&_nc_ohc=zlqmgmm65BcAX-C0H-8&_nc_ht=scontent.fcmn5-1.fna&oh=094fc7be800ac39731a9f3b57ef9c620&oe=61037DA2",
              ),
            ),
            CircleAvatar(
              radius: 8.2,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 1.0,
                end:1.0,                      ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),

          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
            "Iliass Alilou vvvvvvvvvvvvvv",
            maxLines: 2,
            overflow: TextOverflow.ellipsis
        ),
      ],
    ),
  );

}
