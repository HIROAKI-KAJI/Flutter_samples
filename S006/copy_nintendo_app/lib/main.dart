import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  final home = Home();
  final app = MaterialApp(home: home,);
  final scopedApp = ProviderScope(child : app);
  runApp(scopedApp);
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.white,
          ),
        Expanded(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey,
            ),
        )
        
      ]),
    );
  }
}