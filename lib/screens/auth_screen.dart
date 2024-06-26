import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_receitas/components/auth_form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                Color.fromRGBO(88, 240, 93, 1.0),
                Color.fromRGBO(64, 224, 208, 1.0)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 70,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 70,
                  ),
                  transform: Matrix4.rotationZ(-8 * pi / 180)..translate(-10.0),//deixa a logo torta
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple.shade900,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black26,
                        offset: Offset(0, 2),
                      )
                    ]
                  ),
                  child: Text(
                    'Receitas!',
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'RobotoCondensed',
                      color: Colors.white,
                    ),
                  ),
                ),
                AuthForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}