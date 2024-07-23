import 'package:flutter/material.dart';

import 'audiBooks.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AudiBooksApp.routeName,
      routes: {
        AudiBooksApp.routeName:(context)=>AudiBooksApp(),
      }
    );
  }
}
