import 'dart:convert';
import 'package:flutter/services.dart';
import '../recipe.dart';

Future<List<recipe>> loadRecipes() async {
  final jsonString = await rootBundle.loadString('food_recipes.json');
  
  Map<String, dynamic> jsonMap = json.decode(jsonString) as Map<String, dynamic>;
  
  final List<dynamic> list = jsonMap['recipes'] as List<dynamic>;
  return list.map((e) => recipe.fromJson(e as Map<String, dynamic>)).toList();
}
