// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meu_crediario/data/dummy_users.dart';
import 'package:meu_crediario/models/endereco.dart';
import 'package:meu_crediario/models/pagamento.dart';
import 'package:meu_crediario/models/user.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    if (user.id != null && _items.containsKey(user.id)) {
      _items.update(user.id.toString(), (_) => user);
    } else {
      final id = Random().nextInt(4294967295).toString();

      _items.putIfAbsent(
          id,
          () => User(
                id: id,
                cpf: user.cpf,
                nome: user.nome,
                rg: user.rg,
                telefone: user.telefone,
                vendedor: user.vendedor,
                endereco: Endereco(
                    cep: user.endereco.cep,
                    logradouro: user.endereco.logradouro,
                    numero: user.endereco.numero,
                    bairro: user.endereco.bairro,
                    cidade: user.endereco.cidade,
                    uf: user.endereco.uf,
                    complemento: user.endereco.complemento),
                pagamento: Pagamento(
                    proxPagamento: user.pagamento.proxPagamento,
                    entrada: user.pagamento.entrada,
                    formaPagamento: user.pagamento.formaPagamento,
                    tipoPagamento: user.pagamento.tipoPagamento,
                    total: user.pagamento.total),
              ));
    }

    notifyListeners();
  }

  void remove(User user) {
    if (user != null && user.id != null) {
      _items.remove(user.id);
      notifyListeners();
    }
  }
}
