import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Imagem de fundo vinda da internet
            Positioned.fill(
              child: Image(
              image: NetworkImage(
                "https://bdjogos.com.br/capas/1429-doom-3-pc-capa-1.jpg", // URL da imagem
              ),
              ),
            ),
            // Conteúdo sobreposto
            Center(
              child: Text(
                "Texto sobre o fundo",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

