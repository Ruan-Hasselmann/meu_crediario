// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meu_crediario/models/user.dart';
import 'package:meu_crediario/routes/app_routes.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    // final avatar = user.avatar == null || user.avatar.isEmpty
    //     ? CircleAvatar(child: Icon(Icons.person))
    //     : CircleAvatar(backgroundImage: NetworkImage(user.avatar));
    return ListTile(
      // leading: avatar,
      title: Text("${user.nome} ${user.pagamento.proxPagamento}"),
      subtitle: Text(
          "Endereço: ${user.endereco.logradouro} Nº: ${user.endereco.numero} Bairro: ${user.endereco.bairro}"),
      trailing: Container(
        width: 145,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM,
                  arguments: user,
                );
              },
              icon: Icon(Icons.edit),
              color: Colors.orange,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.PAGAMENTO_FORM,
                  arguments: user,
                );
              },
              icon: Icon(Icons.attach_money),
              color: Colors.green,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.NOVA_COMPRA,
                  arguments: user,
                );
              },
              icon: Icon(Icons.shopping_cart),
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
