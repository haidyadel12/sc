import 'package:final_ed/pages/frist.dart';
import 'package:flutter/material.dart';
import 'package:final_ed/pages/loading.dart';
import 'package:final_ed/pages/home.dart';
import 'package:final_ed/pages/info.dart';
import 'package:final_ed/pages/sitting.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Frist(),
    );
  }
}
// Future<void> main() async {
//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//     statusBarBrightness: Brightness.dark,
//     systemNavigationBarColor: Colors.transparent,
//     systemNavigationBarDividerColor: Colors.transparent,
//     systemNavigationBarIconBrightness: Brightness.dark,
//     statusBarIconBrightness: Brightness.dark,
//   ));
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: '/frist',
//     routes: {
//       '/frist': (context) => Frist(),
//       '/home': (context) => Home(),
//       '/loading': (context) => loading(),
//       '/sign': (context) => sign(),
//       '/info': (context) => info(),
//       '/login': (context) => login(),
//       '/sitting': (context) => sitting(),
//     },
//   ));
// }