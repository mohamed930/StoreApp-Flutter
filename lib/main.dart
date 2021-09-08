import 'package:flutter/material.dart';
import 'package:testing/Pages/Product.dart';
import 'Pages/Home.dart';
import 'Pages/Catagory.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Souq.com",
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Home(),
      routes: {
        'categories': (context) {
          return catagories();
        },
        'Home': (context) {
          return Home();
        }
      },
    );
  }

}