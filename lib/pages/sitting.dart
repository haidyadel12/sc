import 'package:final_ed/pages/home.dart';
import 'package:flutter/material.dart';

import 'info.dart';

class sitting extends StatefulWidget {
  const sitting({super.key});

  @override
  State<sitting> createState() => _sittingState();
}

class _sittingState extends State<sitting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80.0,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Text(
              'Universal Scanner',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffff6c22),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.search,
                    size: 30.0,
                    color: Color(0xffff6c22),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => const info()));
                  },
                  child: Icon(
                    Icons.account_circle,
                    size: 30.0,
                    color: Color(0xffff6c22),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 40.0,
                color: Color(0xffff6c22),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            FilledButton(
              onPressed: () {
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.black,),
                ]
              ),
            ),
            SizedBox(height: 20.0,),
            FilledButton(
              onPressed: () {
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.black,),
                  ]
              ),
            ),
            SizedBox(height: 250.0,),
            Center(
              child: Text('Copyright © 2024 Universal Scanner',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
