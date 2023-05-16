import 'package:flutter/material.dart';
import 'package:loginsampleapp/chat.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // チャット画面に遷移＋ログイン画面を破棄
                await Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return const ChatPage();
                  }),
                );
              },
              child: const Text('LOGIN')
              )
          ],
        ),
      ),
    );
  }
}