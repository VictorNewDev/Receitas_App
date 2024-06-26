import 'package:flutter/material.dart';
import 'package:flutter_application_receitas/screens/auth_screen.dart';
import 'package:flutter_application_receitas/screens/tabs_screen.dart';
import 'package:provider/provider.dart';

import '../models/auth.dart';
import '../models/meal.dart'; // Certifique-se de importar o modelo Meal

class AuthOrHomePage extends StatelessWidget {
  final List<Meal> _favoriteMeals;

  const AuthOrHomePage(this._favoriteMeals, {super.key});

  @override
  Widget build(BuildContext context) {
    Auth auth = Provider.of(context);
    return auth.isAuth ? TabsScreen(_favoriteMeals) : const AuthPage();
  }
}
