

import 'package:burc_application/ana_sayfa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burç Rehberi',
      
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: anaSayfa()
      
    );
    
  }
}

