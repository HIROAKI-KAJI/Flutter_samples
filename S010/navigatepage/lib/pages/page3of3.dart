import 'package:flutter/material.dart';
import 'package:navigatepage/pages/page3of4.dart';

class Page3of3 extends StatelessWidget {
  const Page3of3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page3-3'),
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
                      debugPrint("meth2");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page3of4()),
                      );
                    },
                    child: const Text("next")),
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