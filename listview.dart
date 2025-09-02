// ignore_for_file: camel_case_types, unused_field, unused_import

import 'package:flutter/material.dart';
import '../recipe.dart';
import 'receipejson.dart';
import 'dart:convert';

class foodlist extends StatefulWidget {
  const foodlist({super.key});

  @override
  State<foodlist> createState() => _foodlistState();
}

class _foodlistState extends State<foodlist> {
  
  late Future<List<recipe>> _futureRecipes;

  @override
  void initState() {
    super.initState();
    _futureRecipes = recipe(title: '', description: '', ingredients: []) as Future<List<recipe>>;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Recipes"),
        backgroundColor: Colors.blue,
      ),
      
      //For Basic List View
      /*
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.restaurant_menu),
            title: Text("Food Item ${index + 1}"),
            subtitle: const Text("Food Recipes Details"),
          );
        },
      ),

      */

      
       body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text('Description', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            Text(recipe.description),
            
            const SizedBox(height: 15),
            Text('Ingredients', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: recipe.ingredients.length,
                
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: const Icon(Icons.check_box_outlined),
                    title: Text(recipe.ingredients[i]),
                    subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                
                   children: [
                  Text(recipe.description),
                  const SizedBox(height: 4),
                  Text(
                    "Ingredients: ${recipe.ingredients.join(', ')}",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}