import 'package:flutter/material.dart';

import 'moody.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MoodyApp.routeName,
      routes: {
        MoodyApp.routeName:(context)=>MoodyApp(),
      },
    );
  }
}
