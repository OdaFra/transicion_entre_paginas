import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
      ),
      backgroundColor: Colors.greenAccent,
      body: const Center(
        child: Text('Pagina 2'),
      ),
    );
  }
}
