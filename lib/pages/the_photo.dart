import 'package:flutter/material.dart';

class The_Photo extends StatelessWidget {
  const The_Photo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Scan 01:11:2020 03:57:06',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffff6c22),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                        },
                        icon: Icon(
                          Icons.edit,
                          size: 25.0,
                          color: Color(0xffff6c22),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                        },
                        icon: Icon(
                          Icons.print,
                          size: 25.0,
                          color: Color(0xffff6c22),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 2),
        child: Image.asset('assets/Res122.jpg'),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
        margin: EdgeInsets.symmetric(vertical: 30 , horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black// Adjust the border radius as needed
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box_outlined,
                color: Color(0xffff6c22),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Color(0xffff6c22),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Color(0xffff6c22),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Color(0xffff6c22),
              ),
            ),
          ],
        ),
      )

    );
  }
}
