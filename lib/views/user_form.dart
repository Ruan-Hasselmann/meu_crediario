// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Formulario de cliente'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                //Enviar pra API
                _form.currentState!.save();
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.save),
              color: Colors.white,
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              Form(
                key: _form,
                child: Column(children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Nome'),
                    onSaved: (value) {
                      print(value);
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'CPF'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'RG'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Telefone'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Vendedor'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'CEP'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Logradouro'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Nº'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Complemento'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Bairro'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Cidade'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'UF'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Entrada'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Proximo pagamento'),
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Forma de pagamento'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Tipo de pagamento'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Total'),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
