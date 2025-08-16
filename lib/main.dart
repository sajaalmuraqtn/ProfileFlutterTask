import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Mozzila"),
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading:
              true, // add arrow icon to go back to last screen i visit
          title: Container(
            child: Row(
              spacing: 20,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/avaterprofile.png'),
                  radius: 20,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          backgroundColor: Colors.orange,
          actionsPadding: EdgeInsets.only(
            right: 30,
          ), //make padding between action and screen border
          actions: [Icon(Icons.list, size: 30, color: Colors.white)],
        ),
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 15,
      children: [
        Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/avatar.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(113, 158, 158, 158),
                    spreadRadius: 3, //الانتشار
                    offset: Offset(3, 0),
                    blurRadius: 10, //الوميض او تخفيف الخط
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),

            Text(
              "Saja ALmuraqtn",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                shadows: [
                  BoxShadow(
                    color: Colors.orange,
                    spreadRadius: 3,
                    offset: Offset(3, 3),
                    blurRadius: 13,
                  ),
                ],
              ),
            ),
          ],
        ),

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call, color: Colors.black),
                Text("call", style: TextStyle(color: Colors.black)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.send, color: Colors.black),
                Text("route", style: TextStyle(color: Colors.black)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.share, color: Colors.black),
                Text("share", style: TextStyle(color: Colors.black)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.message, color: Colors.black),
                Text("message", style: TextStyle(color: Colors.black)),
              ],
            ),
          ],
        ),

        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(126, 82, 165, 233),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/facebook.png'),
                radius: 15,
              ),
              Text("facebook.com/saja_muraqtn", style: TextStyle(fontSize: 15)),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(123, 25, 47, 245),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/linkedin.png'),
                radius: 15,
              ),
              Text("linkedin.com/saja_muraqtn", style: TextStyle(fontSize: 15)),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(125, 252, 128, 227),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/instagram.png'),
                radius: 15,
              ),
              Text(
                "instagram.com/saja_muraqtn",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(125, 128, 255, 121),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
             Icon(Icons.phone ,size: 20,),
              Text(
                "0597397284",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(124, 255, 182, 182),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/location.png'),
                radius: 15,
              ),
              Text(
                "https://www.google.com/maps",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        TextButton(
          child: Text("Contact Us",style: TextStyle(fontSize: 20),),
          onPressed: () {}, 
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              side: BorderSide(color: Colors.orange),
            ),
          ),
        ),
      ],
    );
  }
}
