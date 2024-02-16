import 'package:final_ed/pages/the_photo.dart';
import 'package:flutter/material.dart';
import 'bottomnavbar.dart';
import 'navbar.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                child: Text('Recent',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(20, (index) => GestureDetector(
                        onTap: () {
                          // Navigate to another page when the container is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => The_Photo()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 20,
                                offset: Offset(1, 3),
                              ),
                            ],
                          ),
                          width: 200,
                          height: 170,
                          margin: EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 70,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/Res122.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                top: 85,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 0),
                                  child: Container(
                                    color: Colors.transparent,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Scan 01:11:2020 03:57:06',
                                          style: TextStyle(
                                            color: Colors.grey[800],
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Today',
                                              style: TextStyle(color: Colors.grey),
                                            ),
                                            Text(
                                              '1 page',
                                              style: TextStyle(
                                                color: Colors.grey[800],
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                child: Text('Documents',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: List.generate(
                      10,
                          (index) => GestureDetector(
                        onTap: () {
                          // Navigate to another page when the container is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => The_Photo()),
                          );
                        },
                        child: Dismissible(
                          key: UniqueKey(),
                          direction: DismissDirection.endToStart,
                          background: Container(
                            color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10.0,10.0,30.0,10.0),
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                    offset: Offset(1, 3),
                                  ),
                                ],
                              ),
                              width: 400,
                              height: 90,
                              margin: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 12.0 , left: 20.0,right: 12.0,bottom: 12.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.3),
                                                  spreadRadius: 0.5,
                                                  blurRadius: 10,
                                                  offset: Offset(3, 3),
                                                ),
                                              ],
                                            ),
                                            child: Image.asset(
                                              'assets/Res122.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10.0,),
                                  Container(
                                    height: 80,
                                    width: 260,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Scan 01:11:2020 03:57:06',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          SizedBox(height: 15.0,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Today',
                                                style: TextStyle(
                                                    color: Colors.grey
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 15.0),
                                                child: Text(
                                                  '1 page',
                                                  style: TextStyle(
                                                      color: Colors.grey[800],
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
