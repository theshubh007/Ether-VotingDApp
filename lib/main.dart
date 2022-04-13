
import 'package:flutter/material.dart';
import 'package:votingapp/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(

          ),
          appBarTheme: AppBarTheme(
            elevation: 0,
          )


      ),


    );
  }
}
