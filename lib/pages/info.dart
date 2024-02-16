import 'package:flutter/material.dart';

import 'home.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80.0,
        backgroundColor: Colors.black,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed:() {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const Home()));
              },
              icon: Icon(
                Icons.arrow_back,
                size: 30.0,
                color: Color(0xffff6c22),
              ),
            ),
            SizedBox(width: 30,),
            Center(
              child: Text('Universal Scanner',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffff6c22),
                ),
              ),
            ),
          ],
        ) ,
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 70.0,
              color: Color(0xffff6c22),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25.0
                  ),
                ),
                SizedBox(height: 15.0,),
                Text('haidy adel',
                  style: TextStyle(
                      color: Color(0xffff6c22),
                      fontSize: 25.0
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Email',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25.0
                  ),
                ),
                SizedBox(height: 15.0,),
                Text('haidyadel@gmail.com',
                  style: TextStyle(
                      color: Color(0xffff6c22),
                      fontSize: 25.0
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}
