class Pagamento {
  final String proxPagamento;
  final double entrada;
  final String formaPagamento;
  final String tipoPagamento;
  final double total;

  const Pagamento({
    required this.proxPagamento,
    required this.entrada,
    required this.formaPagamento,
    required this.tipoPagamento,
    required this.total,
  });
}
