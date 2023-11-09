import 'package:aplikasi_5simic1/akun.dart';
import 'package:aplikasi_5simic1/home.dart';
import 'package:aplikasi_5simic1/luas.dart';
import 'package:aplikasi_5simic1/volume.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  List pilihanLayer = [
    const MyHome(),
    const MyVolume(),
    const MyLuas(),
    const MyAkun(),
  ];

  int indexLayerKe = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Dashboard')),
      body: pilihanLayer.elementAt(indexLayerKe),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.volume_down),
            label: "Volume",
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: "Luas",
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Akun",
            backgroundColor: Colors.purple,
          ),
        ],
        selectedItemColor: Colors.amber[300],
        currentIndex: indexLayerKe,
        onTap: (value) {
          setState(() {
            indexLayerKe = value;
          });
        },
        showUnselectedLabels: true,
      ),
    );
  }
}


// Dashboard.dart
// =====================
// 1. Ubah class stateless menjadi statefull.
// 2. Buat variabel baru dengan type List untuk menampung semua layer.
// 3. Ubah nilai attribut body dengan variabel baru di nomor-2.
// 4. Buat variabel baru dengan type integer untuk menampung nilai index layer dinomor-2.
// 5. BottomNavigationBar ubah nilai di attribut currentIndex dan onTap.
// 	-currentIndex: Variabel baru nomor-4.
// 	-onTap: (value) {} dan tambah fungsi setState()