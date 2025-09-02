// ignore_for_file: camel_case_types

class recipe {
  final String title;
  final String description;
  final List<String> ingredients;

  recipe({
    required this.title,
    required this.description,
    required this.ingredients,
  });

  factory recipe.fromJson(Map<String, dynamic> json) {
    return recipe(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      ingredients: (json['ingredients'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }
}
