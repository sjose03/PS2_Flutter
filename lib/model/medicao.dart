
class Medicao {
  // final String id;
  final double co2Vol;
  final double phVol;
  final String medicaoDate;
  final String nome;
  final String uf;
  final String cidade;

  Medicao(
      {
        // required this.id,
      required this.co2Vol,
      required this.phVol,
      required this.medicaoDate,
      required this.nome,
      required this.uf,
      required this.cidade,
      });

  factory Medicao.fromJson(Map<String, dynamic> json) {
    return Medicao(
        // id: json['id'],
        co2Vol: json['co2_vol'],
        phVol: json['ph_vol'],
        medicaoDate: json['medicao_date'],
        nome: json['sensor']['local']['nome'],
        uf: json['sensor']['local']['uf'],
        cidade: json['sensor']['local']['cidade'],        
        );
  }
}
