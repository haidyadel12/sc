import 'package:file_picker/file_picker.dart';
import 'package:final_ed/pages/loading.dart';
import 'package:final_ed/pages/sitting.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_tesseract_ocr/flutter_tesseract_ocr.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool _scanning = false;
  String _extractText = '';
  File? _pickedImage;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const loading()));
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Icon(
                Icons.home,
                size: 30.0,
                color: Color(0xffff6c22),
              ),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {
                _showScanMenu(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      'Scan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xffff6c22),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const sitting()));
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Icon(
                Icons.settings,
                size: 30.0,
                color: Color(0xffff6c22),
              ),
            ),
          ),
          label: '',
        ),
      ],
    );
  }


  void _showScanMenu(BuildContext context) async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(50, 550, 50, 100),
      items: [
        PopupMenuItem(
          onTap: () async {
            setState(() {
              _scanning = true;
            });
            final pickedImageFile = await ImagePicker().pickImage(source: ImageSource.gallery);
            if (pickedImageFile != null) {
              _pickedImage = File(pickedImageFile.path);
              _extractText = await FlutterTesseractOcr.extractText(
                pickedImageFile.path,
                language: 'eng', // Specify language if needed
              );
            }
            setState(() {
              _scanning = false;
            });
          },
          child: ListTile(
            leading: Icon(
              Icons.image,
              color: Color(0xffff6c22),
            ),
            title: Text(
              'Gallery',
              style: TextStyle(
                color: Color(0xffff6c22),
              ),
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () async {
            final result = await FilePicker.platform.pickFiles();
          },
          child: ListTile(
            leading: Icon(
              Icons.file_copy,
              color: Color(0xffff6c22),
            ),
            title: Text(
              'File',
              style: TextStyle(
                color: Color(0xffff6c22),
              ),
            ),
          ),
        ),
      ],
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Colors.black,
      constraints: BoxConstraints(minWidth: 1000), // Set max width as needed
    );
  }
}
