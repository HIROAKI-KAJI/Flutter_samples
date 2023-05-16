import 'package:flutter/material.dart';
import 'package:navigatepage/home.dart';

class Page3of4 extends StatelessWidget {
  const Page3of4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page3-4'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
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
                        MaterialPageRoute(
                            builder: (context) => const Home()),
                      );
                    },
                    child: const Text("Home")),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BackButton(
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ),
            ],
          ),
        ),
      ),
    );
  }
}