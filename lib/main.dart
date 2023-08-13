import 'package:flutter/material.dart';
import 'package:flutter_vector_bike/screens/home_screen.dart';
void  main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:const  Color(0xff708985),
        scaffoldBackgroundColor:const Color(0xff5d716f)
      ),
      home:  HomeScreen(),
    );
  }
}
