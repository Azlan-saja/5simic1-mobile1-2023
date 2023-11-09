import 'package:aplikasi_5simic1/dashboard.dart';
import 'package:aplikasi_5simic1/luas.dart';
import 'package:aplikasi_5simic1/volume.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_5simic1/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi 5SIMIC1",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const MyLogin(),
    );
  }
}
