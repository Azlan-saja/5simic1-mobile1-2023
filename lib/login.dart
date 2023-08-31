import 'package:aplikasi_5simic1/home.dart';
import 'package:flutter/material.dart';

// a) Ubah menjadi StatefulWidget
class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  // b) Buat variabel baru menggunakan TextEditingController()
  final vEmail = TextEditingController();
  final vPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'A P L I K A S I \n5SIMIC1',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[800],
                  ),
                  onPressed: () {},
                  child: const Text('Google'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                  ),
                  onPressed: () {},
                  child: const Text('Facebook'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: TextField(
                // c) Sandingkan variabel vEmail
                //    dengan inputan email
                //    menggunakan atribut controller
                controller: vEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(18),
              child: TextField(
                // c) Sandingkan variabel vPassword
                //    dengan inputan password
                //    menggunakan atribut controller
                controller: vPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // d) Kondisikan state/data vEmail dan vPassword
                if (vEmail.text == 'a@g.c' && vPassword.text == '123') {
                  // Login Berhasil
                  // Navigasi
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyDashboard(),
                    ),
                  );
                } else {
                  // Login Gagal
                  const pesan = SnackBar(
                    content: Text('Login Gagal.\nEmail dan Password Salah.'),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(pesan);
                }
              },
              child: const Text('Login'),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('Belum Punya Akun?'),
              TextButton(
                onPressed: () {},
                child: const Text('Register'),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
