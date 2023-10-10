import 'dart:convert';

import 'package:apibhagvatgita/model/home_model.dart';
import 'package:apibhagvatgita/model/verse_modal.dart';
import 'package:http/http.dart' as http;

class Apihelper {
  static final helper = Apihelper._();

  Apihelper._();

  Future<List<Homemodel>> getApi() async {
    String link = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/?limit=18";
    var response = await http.get(Uri.parse(link), headers: {
      'X-RapidAPI-Key': 'dfbf47b288mshfaffb05357f706ep1a4b83jsn90ed62e79227',
      'X-RapidAPI-Host': 'bhagavad-gita3.p.rapidapi.com'
    });
    List json = jsonDecode(response.body);
    List<Homemodel> list = json.map((e) => Homemodel.fromJson(e)).toList();
    return list;
  }

  Future<List<Versemodel>> verseapi(int no) async {
    String link =
        "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/$no/verses/";
    var response = await http.get(Uri.parse(link), headers: {
      'X-RapidAPI-Key': "dfbf47b288mshfaffb05357f706ep1a4b83jsn90ed62e79227",
      'X-RapidAPI-Host': "bhagavad-gita3.p.rapidapi.com",
    });
    List json = jsonDecode(response.body);
    List<Versemodel> list = json.map((e) => Versemodel.fromJson(e)).toList();
    return list;
  }
}
