import 'package:copy_nintendo_app/my_page_body.dart';
import 'package:copy_nintendo_app/my_page_header.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyPageHeader(
            onPressedSettingButton: (){
              debugPrint('テスト');
            },
            onPressedQrButton: (){
              debugPrint('QRCodeButton');
            },
            ),
            const MyPageBody(),
        ],
      )
    );
  }
}