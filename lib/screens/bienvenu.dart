import 'package:flutter/material.dart';

class Bienvenu extends StatelessWidget {
  const Bienvenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acceuil'),
      ),
      body: const Center(
        child: Text('Bienvenu a vous'),
      ),
    );
  }
}
