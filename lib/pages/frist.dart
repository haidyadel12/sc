import 'dart:async';
import 'package:final_ed/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Frist extends StatelessWidget {
  const Frist({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loading()),
      );
    });
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/logo-no-background.png'),
                radius: 60.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Text('Universal Scanner',
              style: TextStyle(
                color: Color(0xffff6c22),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Text('ver 0.1',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10.0,
              ),
            ),
            SizedBox(height: 80.0,),
            SpinKitThreeBounce(
              size: 30.0,
              color: Color(0xffff6c22),
            )
          ],
        ),
    );
  }
}
