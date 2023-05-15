import 'package:bapp/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  const home = Home();
  const app = MaterialApp(
    home : home,
    debugShowCheckedModeBanner: false,
  );
  const scopedApp = ProviderScope(child: app);
  runApp(scopedApp);
}


