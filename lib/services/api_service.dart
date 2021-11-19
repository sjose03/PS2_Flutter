import 'package:http/http.dart' as http;
import 'package:ps2/model/medicao.dart';
import 'dart:convert';

class ApiService {
  Future<Medicao> fetchMinPH() async {
    final response =
        await http.get(Uri.http('localhost:8080', '/medicao/min_ph'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Medicao.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load a medicao');
    }
  }

  Future<Medicao> fetchMaxPH() async {
    final response =
        await http.get(Uri.http('localhost:8080', '/medicao/max_ph'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Medicao.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load a medicao');
    }
  }

  Future<Medicao> fetchMinCo2() async {
    final response =
        await http.get(Uri.http('localhost:8080', '/medicao/min_co2'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Medicao.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load a medicao');
    }
  }

  Future<Medicao> fetchMaxCo2() async {
    final response =
        await http.get(Uri.http('localhost:8080', '/medicao/max_co2'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Medicao.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load a medicao');
    }
  }

  // Rotas por data


    Future<Medicao> fetchMinPHData(String query) async {
    final response =
        await http.get(Uri.http('localhost:8080', '/medicao/min-ph-date', {"data": "$query"}));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Medicao.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load a medicao');
    }
  }

  Future<Medicao> fetchMaxPHData(String query) async {
    final response =
        await http.get(Uri.http('localhost:8080', '/medicao/max-ph-date', {"data": "$query"}));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Medicao.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load a medicao');
    }
  }

  Future<Medicao> fetchMinCo2Data(String query) async {
    final response =
        await http.get(Uri.http('localhost:8080', '/medicao/min-co2-date', {"data": "$query"}));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Medicao.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load a medicao');
    }
  }

  Future<Medicao> fetchMaxCo2Data(String query) async {
    final response =
        await http.get(Uri.http('localhost:8080', '/medicao/max-co2-date', {"data": "$query"}));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Medicao.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load a medicao');
    }
  }

  Future<List<String>> fetchLocais() async {
    final response =
        await http.get(Uri.http('localhost:8080', '/medicao/locais'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.

      List<String> locaisLista = response.body
          .split(",")
          .map((e) =>
              e.replaceAll("[", "").replaceAll("]", "").replaceAll('"', ""))
          .toList();
      // print(locaisLista);
      return (locaisLista);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load a medicao');
    }
  }

  Future<List<String>> fetchDatas(String query) async {
    final response = await http.get(
        Uri.http('localhost:8080', '/medicao/datas', {"local": "$query"}));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return(response.body.split(",")
          .map((e) =>
              e.replaceAll("[", "").replaceAll("]", "").replaceAll('"', ""))
          .toList());
    } else {
      throw Exception('Failed to load a medicao');
    }
  }
}
