


class GetProdutos {
  String codigoProduto;
  String descProduto;
  String tipoProduto;
  String unidadeMedida;
  String armazemPadrao;

GetProdutos({
  required this.codigoProduto,
  required this.descProduto,
  required this.tipoProduto,
  required this.unidadeMedida,
  required this.armazemPadrao,

});

  factory GetProdutos.fromJson(Map<String, dynamic> json) => GetProdutos(
        codigoProduto: json['codigoProduto'], 
        descProduto: json['descProduto'], 
        tipoProduto: json['tipo'], 
        unidadeMedida: json['um'], 
        armazemPadrao: json['armazem'],   
      );

  Map<String,dynamic> toJson() => {
        'codigoProduto':codigoProduto, 
        'descProduto':descProduto, 
        'tipo':tipoProduto, 
        'um':unidadeMedida, 
        'armazem':armazemPadrao
      };
}


  
