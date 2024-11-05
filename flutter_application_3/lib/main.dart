import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
              "assets/doom3fundo.jpg",
              fit:BoxFit.cover
              ),
            ),
           
            // Conteúdo sobreposto
            Center(
              child:
                Image.asset(
                    "assets/Carmackperfil.jpg",
                  ),
              ),
             ],
            ),
        ),
      );
  }
}

