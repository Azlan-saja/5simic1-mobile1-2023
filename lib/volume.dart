import 'package:flutter/material.dart';

class MyVolume extends StatefulWidget {
  const MyVolume({super.key});

  @override
  State<MyVolume> createState() => _MyVolumeState();
}

class _MyVolumeState extends State<MyVolume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Volume Kubus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                label: Text('Input Nilai Panjang'),
                icon: Icon(Icons.arrow_forward_rounded),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                label: Text('Input Nilai Lebar'),
                icon: Icon(Icons.arrow_forward_rounded),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                label: Text('Input Nilai Tinggi'),
                icon: Icon(Icons.arrow_forward_rounded),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Hitung'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {},
                  child: const Text('Hapus'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black),
                  onPressed: () {},
                  child: const Text('Keluar'),
                ),
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                label: Text('Hasil'),
                icon: Icon(Icons.question_answer),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
