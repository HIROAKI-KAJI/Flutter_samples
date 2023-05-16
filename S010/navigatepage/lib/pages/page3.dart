import 'package:flutter/material.dart';
import 'package:navigatepage/pages/page3of1.dart';
import 'package:navigatepage/pages/page3of3.dart';
import 'package:navigatepage/pages/page3of5.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page3'),
      ),
      body: Center(
        child : Container(
        padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      debugPrint("login meth 1");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page3of1()),
                      );
                    },
                    child: const Text("login meth 1")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      debugPrint("login meth 2");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page3of3()),
                      );
                    },
                    child: const Text("login meth 2")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      debugPrint("login meth 3");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page3of5()),
                      );
                    },
                    child: const Text("login meth 3")),
              ),
              
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BackButton(
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}