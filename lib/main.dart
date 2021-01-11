import 'package:flutter/material.dart';

import './pages/home.dart';

void main() {
  runApp(MCOrderApp());
}

class MCOrderApp extends StatelessWidget {
  const MCOrderApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '麦当劳点餐',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.white,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
