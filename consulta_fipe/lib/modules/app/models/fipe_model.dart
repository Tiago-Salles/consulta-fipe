import 'dart:convert';

class FipeModel {
  final String valor;
  final String marca;
  final String modelo;
  final int anoModelo;
  final String combustivel;
  final String codigoFipe;
  final String mesReferencia;
  final int tipoVeiculo;
  final String siglaCombustivel;
  final String dataConsulta;
  FipeModel({
    required this.valor,
    required this.marca,
    required this.modelo,
    required this.anoModelo,
    required this.combustivel,
    required this.codigoFipe,
    required this.mesReferencia,
    required this.tipoVeiculo,
    required this.siglaCombustivel,
    required this.dataConsulta,
  });

  FipeModel copyWith({
    String? valor,
    String? marca,
    String? modelo,
    int? anoModelo,
    String? combustivel,
    String? codigoFipe,
    String? mesReferencia,
    int? tipoVeiculo,
    String? siglaCombustivel,
    String? dataConsulta,
  }) {
    return FipeModel(
      valor: valor ?? this.valor,
      marca: marca ?? this.marca,
      modelo: modelo ?? this.modelo,
      anoModelo: anoModelo ?? this.anoModelo,
      combustivel: combustivel ?? this.combustivel,
      codigoFipe: codigoFipe ?? this.codigoFipe,
      mesReferencia: mesReferencia ?? this.mesReferencia,
      tipoVeiculo: tipoVeiculo ?? this.tipoVeiculo,
      siglaCombustivel: siglaCombustivel ?? this.siglaCombustivel,
      dataConsulta: dataConsulta ?? this.dataConsulta,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'valor': valor,
      'marca': marca,
      'modelo': modelo,
      'anoModelo': anoModelo,
      'combustivel': combustivel,
      'codigoFipe': codigoFipe,
      'mesReferencia': mesReferencia,
      'tipoVeiculo': tipoVeiculo,
      'siglaCombustivel': siglaCombustivel,
      'dataConsulta': dataConsulta,
    };
  }

  factory FipeModel.fromMap(Map<String, dynamic> map) {
    return FipeModel(
      valor: map['valor'],
      marca: map['marca'],
      modelo: map['modelo'],
      anoModelo: map['anoModelo']?.toInt(),
      combustivel: map['combustivel'],
      codigoFipe: map['codigoFipe'],
      mesReferencia: map['mesReferencia'],
      tipoVeiculo: map['tipoVeiculo']?.toInt(),
      siglaCombustivel: map['siglaCombustivel'],
      dataConsulta: map['dataConsulta'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FipeModel.fromJson(String source) =>
      FipeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Fipemodel(valor: $valor, marca: $marca, modelo: $modelo, anoModelo: $anoModelo, combustivel: $combustivel, codigoFipe: $codigoFipe, mesReferencia: $mesReferencia, tipoVeiculo: $tipoVeiculo, siglaCombustivel: $siglaCombustivel, dataConsulta: $dataConsulta)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FipeModel &&
        other.valor == valor &&
        other.marca == marca &&
        other.modelo == modelo &&
        other.anoModelo == anoModelo &&
        other.combustivel == combustivel &&
        other.codigoFipe == codigoFipe &&
        other.mesReferencia == mesReferencia &&
        other.tipoVeiculo == tipoVeiculo &&
        other.siglaCombustivel == siglaCombustivel &&
        other.dataConsulta == dataConsulta;
  }

  @override
  int get hashCode {
    return valor.hashCode ^
        marca.hashCode ^
        modelo.hashCode ^
        anoModelo.hashCode ^
        combustivel.hashCode ^
        codigoFipe.hashCode ^
        mesReferencia.hashCode ^
        tipoVeiculo.hashCode ^
        siglaCombustivel.hashCode ^
        dataConsulta.hashCode;
  }
}
