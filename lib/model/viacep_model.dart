//EU UTILIZEI UM SITE CHAMADO: "JSON TO DART" para converter o código abaixo que era em json to dart

//EXPORTAR ESSA API DOS CORREIOS PARA O BACK4APP:

class ViaCEPModel {
  String? cep;
  String? logradouro;
  String? complemento;
  String? bairro;
  String? localidade;
  String? uf;
  String? ibge;
  String? gia;
  String? ddd;
  String? siafi;

  ViaCEPModel(
      {this.cep,
      this.logradouro,
      this.complemento,
      this.bairro,
      this.localidade,
      this.uf,
      this.ibge,
      this.gia,
      this.ddd,
      this.siafi});

  ViaCEPModel.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    logradouro = json['logradouro'];
    complemento = json['complemento'];
    bairro = json['bairro'];
    localidade = json['localidade'];
    uf = json['uf'];
    ibge = json['ibge'];
    gia = json['gia'];
    ddd = json['ddd'];
    siafi = json['siafi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cep'] = this.cep;
    data['logradouro'] = this.logradouro;
    data['complemento'] = this.complemento;
    data['bairro'] = this.bairro;
    data['localidade'] = this.localidade;
    data['uf'] = this.uf;
    data['ibge'] = this.ibge;
    data['gia'] = this.gia;
    data['ddd'] = this.ddd;
    data['siafi'] = this.siafi;
    return data;
  }
}