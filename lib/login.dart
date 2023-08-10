import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Aplikasi 5SIMIC1'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Google')),
              ElevatedButton(onPressed: () {}, child: const Text('Facebook'))
            ],
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: UnderlineInputBorder(),
            ),
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: UnderlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
