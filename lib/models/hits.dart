
import 'package:recipe_guy/models/recipe.dart';

class Hits {
  RecipeModel recipeModel;

  Hits({this.recipeModel});

  factory Hits.fromMap(Map<String, dynamic> parsedJson) {
    return Hits(recipeModel: RecipeModel.fromMap(parsedJson["recipe"]));
  }
}
