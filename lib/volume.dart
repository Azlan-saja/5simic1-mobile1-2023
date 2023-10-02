import 'package:flutter/material.dart';

class MyVolume extends StatefulWidget {
  const MyVolume({super.key});

  @override
  State<MyVolume> createState() => _MyVolumeState();
}

class _MyVolumeState extends State<MyVolume> {
  final vPanjang = TextEditingController();
  final vLebar = TextEditingController();
  final vTinggi = TextEditingController();
  final vHasil = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    vPanjang.clear();
    vLebar.clear();
    vTinggi.clear();
    vHasil.clear();
  }

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
            TextField(
              controller: vPanjang,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Input Nilai Panjang'),
                icon: Icon(Icons.arrow_forward_rounded),
              ),
            ),
            TextField(
              controller: vLebar,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Input Nilai Lebar'),
                icon: Icon(Icons.arrow_forward_rounded),
              ),
            ),
            TextField(
              controller: vTinggi,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
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
                  onPressed: () {
                    int result = 0;
                    result = int.parse(vPanjang.text) *
                        int.parse(vLebar.text) *
                        int.parse(vTinggi.text);
                    vHasil.text = result.toString();
                  },
                  child: const Text('Hitung'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    vPanjang.clear();
                    vLebar.clear();
                    vTinggi.clear();
                    vHasil.clear();
                  },
                  child: const Text('Hapus'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Keluar'),
                ),
              ],
            ),
            TextField(
              controller: vHasil,
              readOnly: true,
              decoration: const InputDecoration(
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
