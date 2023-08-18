import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

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
                    backgroundColor: Colors.blue[600],
                  ),
                  onPressed: () {},
                  child: const Text('Facebook'),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(18),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(18),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
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
