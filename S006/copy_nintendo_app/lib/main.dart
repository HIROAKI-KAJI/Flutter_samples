import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:copy_nintendo_app/home.dart';

void main() {
  const home = Home();
  const app = MaterialApp(
    home: home,
    debugShowCheckedModeBanner: false,//チェック版のマーク削除
    );
  const scopedApp = ProviderScope(child : app);
  runApp(scopedApp);
}