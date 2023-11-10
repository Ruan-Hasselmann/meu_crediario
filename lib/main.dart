import 'package:flutter/material.dart';
import 'package:meu_crediario/provider/users.dart';
import 'package:meu_crediario/routes/app_routes.dart';
import 'package:meu_crediario/views/nova_compra.dart';
import 'package:meu_crediario/views/pagamento_form.dart';
import 'package:meu_crediario/views/user_form.dart';
import 'package:meu_crediario/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm(),
          AppRoutes.NOVA_COMPRA: (_) => const NovaCompra(),
          AppRoutes.PAGAMENTO_FORM: (_) => const PagamentoForm()
        },
      ),
    );
  }
}
