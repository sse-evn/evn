import 'package:flutter/material.dart';
import 'main-scene/main-scene-onay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TicketScreen(),
    );
  }
}
