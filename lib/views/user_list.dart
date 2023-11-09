// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meu_crediario/components/user_tile.dart';
import 'package:meu_crediario/models/endereco.dart';
import 'package:meu_crediario/models/pagamento.dart';
import 'package:meu_crediario/models/user.dart';
import 'package:meu_crediario/provider/users.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Lista de clientes"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              users.put(User(
                  id: '2',
                  nome: "nome",
                  cpf: "cpf",
                  rg: "rg",
                  telefone: "telefone",
                  vendedor: "vendedor",
                  endereco: Endereco(
                      cep: "cep",
                      logradouro: "logradouro",
                      numero: "numero",
                      bairro: "bairro",
                      cidade: "cidade",
                      uf: "uf",
                      complemento: "complemento"),
                  pagamento: Pagamento(
                      proxPagamento: "proxPagamento",
                      entrada: 100,
                      formaPagamento: "formaPagamento",
                      tipoPagamento: "tipoPagamento",
                      total: 150)));
            },
            icon: Icon(Icons.add),
            color: Colors.white,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
