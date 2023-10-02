import 'package:flutter/material.dart';

// a) Ubah menjadi StatefulWidget
class MyLuas extends StatefulWidget {
  const MyLuas({super.key});

  @override
  State<MyLuas> createState() => _MyLuasState();
}

class _MyLuasState extends State<MyLuas> {
  // b) Buat variabel baru
  //    menggunakan TextEditingController()
  final vPanjang = TextEditingController();
  final vLebar = TextEditingController();
  final vHasil = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Luas Persegi Panjang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // c) Sandingkan variabel vPanjang
            //    dengan inputan panjang
            //    menggunakan atribut controller
            TextField(
              controller: vPanjang,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Panjang'),
              ),
            ),
            // c) Sandingkan variabel vLebar
            //    dengan inputan lebar
            //    menggunakan atribut controller
            TextField(
              controller: vLebar,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Lebar'),
              ),
            ),
            // d) Olah state/data untuk semua variabel
            //    yang akan diproses menggunakan onPressed
            ElevatedButton(
              onPressed: () {
                int result = 0;
                result = int.parse(vPanjang.text) * int.parse(vLebar.text);
                vHasil.text = result.toString();
              },
              child: const Text('Hitung'),
            ),
            // c) Sandingkan variabel vHasil
            //    dengan inputan hasil
            //    menggunakan atribut controller
            TextField(
              controller: vHasil,
              decoration: const InputDecoration(
                label: Text('Hasil'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
