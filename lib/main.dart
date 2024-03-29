
import 'package:flutter/material.dart';
import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/services.dart';

void main() => runApp( MyApp());

  class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
     debugShowCheckedModeBanner:false,
      title: 'Material App',
      initialRoute: 'home_Screen',
      routes: { 
        'basic_design'  : (_) => BasicDesignScreen(),
        'scroll_Screen' : (_) => ScrollScreen(),
        'home_Screen' : (_) => HomeScreen()

      },
  
   theme: ThemeData.dark(   
           
      )      
    );
  }
}

