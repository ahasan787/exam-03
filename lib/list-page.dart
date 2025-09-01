// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class foodlist extends StatefulWidget {
  const foodlist({super.key});

  @override
  State<foodlist> createState() => _foodlistState();
}

// ignore: camel_case_types
class _foodlistState extends State<foodlist> {
  final List<Map<String, String>> recipes = List.generate(
    7,
    (index) => {
      "title": "",
      "subtitle": "",
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Food Recipes"),
        backgroundColor: Colors.blue,
       ),
       body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.restaurant_menu),
            title: Text(
              recipes[index]["title"]!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(recipes[index]["subtitle"]!),
          );
        },
      ),
    );
  }
}