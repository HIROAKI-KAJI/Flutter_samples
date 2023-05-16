import 'package:flutter/material.dart';
import 'package:navigatepage/pages/page2.dart';
import 'package:navigatepage/pages/page3.dart';
import 'package:navigatepage/pages/page4.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page1'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: (){
                    debugPrint("ToPage2");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page2()),
                  );
                  },
                  child: const Text("Make Account") 
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: (){
                    debugPrint("ToPage3");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page3()),
                  );
                  },
                  child: const Text("Login Account") 
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: (){
                    debugPrint("ToPage4");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page4()),
                  );
                  },
                  child: const Text("PASS") 
                ),
              )
            ]
          ),
        )
      ),
    );
  }
}