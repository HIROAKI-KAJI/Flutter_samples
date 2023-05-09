import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:copy_nintendo_app/home.dart';

void main() {
  final home = Home();
  final app = MaterialApp(
    home: home,
    debugShowCheckedModeBanner: false,//チェック版のマーク削除
    );
  final scopedApp = ProviderScope(child : app);
  runApp(scopedApp);
}