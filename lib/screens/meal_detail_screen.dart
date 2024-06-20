import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal?;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(meal?.title ?? 'Detalhes da Refeição'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              meal!.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ingredientes',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Container(
            width: 200,
            height: 300,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: meal.ingredients.length,
              itemBuilder: (ctx, index) {
                return Card(//card dos ingredientes
                  child: Text(meal.ingredients[index]),
                  color: Theme.of(context).colorScheme.secondary,
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}