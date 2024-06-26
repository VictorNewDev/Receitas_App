import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _createItem(IconData icon, String label, VoidCallback onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGXXPt0TLV8Y6Kq2fTqWZ2aeryGDkwKUdEJhm_FNC9vjqKJQ_O0rVW5JsCWmynDqzZ3RM&usqp=CAU'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Vamos Cozinhar?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
                backgroundColor: Colors.black54,
              ),
            ),
          ),
          SizedBox(height: 20), 
          _createItem(
            Icons.restaurant,
            'Refeições',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.AUTH_OR_HOME),//Quero navegar para tela home
          ),
          _createItem(
            Icons.settings, 
            'Configurações',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS),
          ),
          _createItem(
            Icons.person, 
            'Perfil',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS),
          ),
        ],
      ),
    );
  }
}