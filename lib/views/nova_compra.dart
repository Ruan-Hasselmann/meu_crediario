import 'package:flutter/material.dart';

class NovaCompra extends StatelessWidget {
  const NovaCompra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Registrar nova compra'),
      ),
    );
  }
}
