import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipe_guy/models/hits.dart';

String appId = "df703568";
String appKey = "7c8a57c27ef150e06681e884dd537e90";

getRecipes(String query) async {
  String url =
      "https://api.edamam.com/search?q=banana&app_id=$appId&app_key=$appKey";
  var response = await http.get(url);
  var jsonData = jsonDecode(response.body);

  jsonData["hits"].forEach((element) {
    Hits hits = Hits(
      recipeModel: element['recipe'],
    );
  });
}
