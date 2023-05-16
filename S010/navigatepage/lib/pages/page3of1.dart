import 'package:flutter/material.dart';
import 'package:navigatepage/pages/page3of2.dart';

class Page3of1 extends StatelessWidget {
  const Page3of1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page3-1'),
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
                      debugPrint("meth1");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page3of2()),
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