import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'Inicio.dart';

final List<Inicio> inicio = [
  Inicio(
    imagem: '../img/Carmack.png',
    texto:
        'Neste aplicativo falaremos um pouco sobre o Carmack. Ele é um programador de video games estadunidense. Carmack é mais conhecido por suas contribuições no campo de programação de gráficos 3D. Ele é co-fundador da id Software e fundador da companhia Armadillo Aerospace, e em agosto de 2013, tornou-se Diretor técnico da Oculus VR. Trabalhou na Softdisk, id Software, Oculus VR, Meta e fundou a Armadillo Aerospace.',
    titulo: 'John D. Carmack II',
  ),
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              '../img/fundotela1.jpg', // Caminho para a imagem de fundo
              fit: BoxFit.cover, // Ajusta a imagem para cobrir toda a tela
            ),
          ),
          Column(
            children: inicio.map((inicio_) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 100, 50, 0),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(inicio_.imagem),
                          width: 200,
                          height: 200,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          inicio_.titulo,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "CharisSIL",
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          inicio_.texto,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "CharisSIL",
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            IrParaSite();
                          },
                          child: Image.asset(
                            'img/Instagram.png',
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

Future<void> IrParaSite() async {
  final Uri uri = Uri.parse('https://www.instagram.com/john.carmack/');
  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw "Cannot launch url";
  }
}
