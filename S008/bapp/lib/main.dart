import 'package:bapp/utils/my_theme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.light,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: const [
              Text(
                "test text"
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
