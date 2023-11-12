// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
        body: Padding(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              Text("EM CONSTRUÇÂO"),
            ],
          ),
        ));
  }
}
