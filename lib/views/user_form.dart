// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:meu_crediario/models/endereco.dart';
import 'package:meu_crediario/models/pagamento.dart';
import 'package:meu_crediario/models/user.dart';
import 'package:meu_crediario/provider/users.dart';
import 'package:provider/provider.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  UserForm({Key? key}) : super(key: key);

  void _loadFormData(User user) {
    _formData['id'] = user.id!;
    _formData['nome'] = user.nome;
    _formData['CPF'] = user.cpf;
    _formData['RG'] = user.rg;
    _formData['telefone'] = user.telefone;
    _formData['vendedor'] = user.vendedor;
    _formData['cep'] = user.endereco.cep;
    _formData['logradouro'] = user.endereco.logradouro;
    _formData['numero'] = user.endereco.numero;
    _formData['bairro'] = user.endereco.bairro;
    _formData['cidade'] = user.endereco.cidade;
    _formData['UF'] = user.endereco.uf;
    _formData['complemento'] = user.endereco.complemento;
    _formData['proxPag'] = user.pagamento.proxPagamento;
    _formData['entrada'] = user.pagamento.entrada.toString();
    _formData['formPag'] = user.pagamento.formaPagamento;
    _formData['tipoPag'] = user.pagamento.tipoPagamento;
    _formData['total'] = user.pagamento.total.toString();
  }

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;

    _loadFormData(user);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Formulario de cliente'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                //Enviar pra API
                final isValid = _form.currentState!.validate();

                if (isValid) {
                  _form.currentState!.save();
                  Provider.of<Users>(context, listen: false).put(
                    User(
                      id: _formData['id'].toString(),
                      nome: _formData['nome'].toString(),
                      cpf: _formData['CPF'].toString(),
                      rg: _formData['RG'].toString(),
                      telefone: _formData['telefone'].toString(),
                      vendedor: _formData['vendedor'].toString(),
                      endereco: Endereco(
                          cep: _formData['cep'].toString(),
                          logradouro: _formData['logradouro'].toString(),
                          numero: _formData['numero'].toString(),
                          bairro: _formData['bairro'].toString(),
                          cidade: _formData['cidade'].toString(),
                          uf: _formData['UF'].toString(),
                          complemento: _formData['complemento'].toString()),
                      pagamento: Pagamento(
                        proxPagamento: _formData['proxPag'].toString(),
                        entrada: double.parse(_formData['entrada'].toString()),
                        formaPagamento: _formData['formPag'].toString(),
                        tipoPagamento: _formData['tipoPag'].toString(),
                        total: double.parse(_formData['total'].toString()),
                      ),
                    ),
                  );
                  Navigator.of(context).pop();
                }
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
                    initialValue: _formData['nome'],
                    decoration: InputDecoration(labelText: 'Nome'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Nome inválido';
                      }
                    },
                    onSaved: (value) => _formData['nome'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['CPF'],
                    decoration: InputDecoration(labelText: 'CPF'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'CPF inválido';
                      }
                    },
                    onSaved: (value) => _formData['CPF'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['RG'],
                    decoration: InputDecoration(labelText: 'RG'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'RG inválido';
                      }
                    },
                    onSaved: (value) => _formData['RG'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['telefone'],
                    decoration: InputDecoration(labelText: 'Telefone'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Telefone inválido';
                      }
                    },
                    onSaved: (value) => _formData['telefone'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['vendedor'],
                    decoration: InputDecoration(labelText: 'Vendedor'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Vendedor inválido';
                      }
                    },
                    onSaved: (value) => _formData['vendedor'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['cep'],
                    decoration: InputDecoration(labelText: 'CEP'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Cep inválido';
                      }
                    },
                    onSaved: (value) => _formData['cep'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['logradouro'],
                    decoration: InputDecoration(labelText: 'Logradouro'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Logradouro inválido';
                      }
                    },
                    onSaved: (value) => _formData['logradouro'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['numero'],
                    decoration: InputDecoration(labelText: 'Nº'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Nº inválido';
                      }
                    },
                    onSaved: (value) => _formData['numero'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['complemento'],
                    decoration: InputDecoration(labelText: 'Complemento'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Complemento inválido';
                      }
                    },
                    onSaved: (value) => _formData['complemento'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['bairro'],
                    decoration: InputDecoration(labelText: 'Bairro'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Bairro inválido';
                      }
                    },
                    onSaved: (value) => _formData['bairro'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['cidade'],
                    decoration: InputDecoration(labelText: 'Cidade'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Cidade inválido';
                      }
                    },
                    onSaved: (value) => _formData['cidade'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['UF'],
                    decoration: InputDecoration(labelText: 'UF'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'UF inválido';
                      }
                    },
                    onSaved: (value) => _formData['UF'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['entrada'],
                    decoration: InputDecoration(labelText: 'Entrada'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Entrada inválido';
                      }
                    },
                    onSaved: (value) => _formData['entrada'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['proxPag'],
                    decoration: InputDecoration(labelText: 'Proximo pagamento'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Proximo pagamento inválido';
                      }
                    },
                    onSaved: (value) => _formData['proxPag'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['formPag'],
                    decoration:
                        InputDecoration(labelText: 'Forma de pagamento'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Forma de pagamento inválido';
                      }
                    },
                    onSaved: (value) => _formData['formPag'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['tipoPag'],
                    decoration: InputDecoration(labelText: 'Tipo de pagamento'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Tipo de pagamento inválido';
                      }
                    },
                    onSaved: (value) => _formData['tipoPag'] = value!,
                  ),
                  TextFormField(
                    initialValue: _formData['total'],
                    decoration: InputDecoration(labelText: 'Total'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Total inválido';
                      }
                    },
                    onSaved: (value) => _formData['total'] = value!,
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
