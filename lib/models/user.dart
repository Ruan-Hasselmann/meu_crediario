import 'package:meu_crediario/models/endereco.dart';
import 'package:meu_crediario/models/pagamento.dart';

class User {
  final String? id;
  final String nome;
  final String cpf;
  final String rg;
  final String telefone;
  final String vendedor;
  final Endereco endereco;
  final Pagamento pagamento;

  const User({
    this.id,
    required this.nome,
    required this.cpf,
    required this.rg,
    required this.telefone,
    required this.vendedor,
    required this.endereco,
    required this.pagamento,
  });
}
