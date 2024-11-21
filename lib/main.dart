import 'package:flutter/material.dart';
import 'package:scaffold_1_desgin/AppBar.dart';
import 'package:scaffold_1_desgin/showmodal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/AppBar',
      routes: {
        '/AppBar': (context) => Appbar(),
        '/Showmodal': (context) => Showmodal(),
      },

      theme: ThemeData(
///////////////////////////////////
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue,
            titleTextStyle: TextStyle(fontSize: 30, color: Colors.black)),
//////////////////////////////////////
        textTheme: TextTheme(
            bodySmall: TextStyle(color: Colors.black, fontSize: 15),
            bodyMedium: TextStyle(color: Colors.black, fontSize: 25)),
///////////////////////////////////////


      ),

    );

  }


}
