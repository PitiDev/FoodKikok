import 'package:flutter/material.dart';
import 'package:foood_kikok/screen/login.dart';
import 'package:foood_kikok/screen/home.dart';
import 'package:foood_kikok/screen/menufood.dart';
import 'package:foood_kikok/screen/order.dart';
import 'package:foood_kikok/screen/map.dart';
import 'package:foood_kikok/screen/status.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'lao'
      ),
      home: Login(),
       routes: <String, WidgetBuilder>{
        '/login': (_) => Login(),
         '/home': (_) => Home(),
         '/menufood': (_) => Menufood(),
         '/order': (_) => Order(),
         '/map': (_) => Map(),
         '/status': (_) => Status()
       }
    );
  }
}
