import 'package:meu_crediario/models/endereco.dart';
import 'package:meu_crediario/models/pagamento.dart';
import 'package:meu_crediario/models/user.dart';

const DUMMY_USERS = {
  '1': User(
      id: '1',
      nome: "Ruan",
      cpf: "123",
      rg: "123",
      telefone: "123",
      vendedor: "Teste",
      endereco: Endereco(
          cep: "97037-182",
          logradouro: "Rua X",
          numero: "325",
          bairro: "Baixo X",
          cidade: "Cidade Y",
          uf: "RS",
          complemento: "Esquina"),
      pagamento: Pagamento(
          proxPagamento: "proxPagamento",
          entrada: 200,
          formaPagamento: "formaPagamento",
          tipoPagamento: "tipoPagamento",
          total: 200)),
  '2': User(
      id: '2',
      nome: "Ruan 2",
      cpf: "123",
      rg: "123",
      telefone: "123",
      vendedor: "Teste",
      endereco: Endereco(
          cep: "97037-182",
          logradouro: "Rua X",
          numero: "325",
          bairro: "Baixo X",
          cidade: "Cidade Y",
          uf: "RS",
          complemento: "Esquina"),
      pagamento: Pagamento(
          proxPagamento: "proxPagamento",
          entrada: 200,
          formaPagamento: "formaPagamento",
          tipoPagamento: "tipoPagamento",
          total: 200)),
  '3': User(
      id: '3',
      nome: "Ruan 2",
      cpf: "123",
      rg: "123",
      telefone: "123",
      vendedor: "Teste",
      endereco: Endereco(
          cep: "97037-182",
          logradouro: "Rua X",
          numero: "325",
          bairro: "Baixo X",
          cidade: "Cidade Y",
          uf: "RS",
          complemento: "Esquina"),
      pagamento: Pagamento(
          proxPagamento: "proxPagamento",
          entrada: 200,
          formaPagamento: "formaPagamento",
          tipoPagamento: "tipoPagamento",
          total: 200))
};
