import 'package:appmobili/biografiaClass.dart';
import 'package:appmobili/empresa.dart';
import 'package:appmobili/imagem.dart';
import 'package:appmobili/main.dart';
import 'package:flutter/material.dart';

class Biografia extends StatelessWidget {
  const Biografia({super.key});

  final ImagemClass imagemavatar = const ImagemClass(
    img: '../img/carmackavatar.jpg',
  );

  final ImagemClass variascarmack = const ImagemClass(
    img: '../img/carmackvarias.png'
  );

  final BiografiaClass carmack = const BiografiaClass(
    titulo: 'Sobre mim',
    nome: 'John D Carmack',
    idade: '54 anos',
    descricao: 'John Carmack é um dos mais notáveis e famosos programadores americanos da história dos games. Fundador da id Software, Carmack desenvolveu muitos jogos inovadores para a sua época, e tem em seu currículo grandes jogos como Wolfenstein 3D, Doom 3, Quake 4 e Rage. Entusiasta da livre distribuição digital e um apaixonado por tecnologia, contribuiu para o avanço tecnológico tanto dos games como de engines, como as famosas engines id Tech, indo até a projetos espaciais, uma figura importantíssima na história dos games e referência em seu ramo. John nasceu no Kansas, filho de um repórter de uma emissora. Estudou em boas escolas e desde cedo já era considerado um gênio no que fazia.',
  );

  final Empresa softdisk = const Empresa(
    titulo: 'SoftDisk',
    descricao: 'A Softdisk era uma empresa de software e internet sediada em Shreveport na Louisiana. Fundada em 1981, seus produtos originais eram revistas em disco que eles chamavam de magazettes. John Carmack saiu da empresa em 1991 para ser cofundador da Id Software.',
    img: '../img/softdisk.png',
  );
  
  final Empresa oculus = const Empresa(
    titulo: 'Oculus',
    descricao: 'Carmack foi diretor Técnico da Oculus VR. Onde fez um papel fundamental no desenvolvimento do headset Oculus Rift. Sua experiencia em gráficos 3D e programação avançada foi essencial para criar uma experiencia imersiva que atraísse tanto gamers quanto desenvolvedores.',
    img: '../img/oculus.png',
  );
  
  final Empresa idsoftware = const Empresa(
    titulo: 'Idsoftware',
    descricao: 'John Carmack, cofundador da id Software, foi uma figura crucial na revolução dos jogos em primeira pessoa. Ele não apenas contribuiu para a criação de clássicos como Doom 3 e Quake 4, mas também foi pioneiro na implementação de gráfico 3D, moldando o futuro da indústria.',
    img: '../img/Id_software_logo.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(  // Adicionado SingleChildScrollView
        child: Stack(
          children: [
            Positioned.fill(
            child: Image.asset(
              '../img/quakepng.png', // Caminho para a imagem de fundo
              fit: BoxFit.cover, // Ajusta a imagem para cobrir toda a tela
            ),
          ),
            // Container de fundo com a imagem ou cor
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: const Color.fromARGB(178, 180, 0, 0),
              ),
            ),

            // Row com o texto e avatar
            Positioned(
              top: 80,
              left: 10,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'John\nCarmack',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(imagemavatar.img),
                      radius: 70,
                    ),
                  ),
                ],
              ),
            ),

            // Conteúdo principal
            Container(
              margin: const EdgeInsets.only(top: 250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Sobre mim
                  Container(
                    margin: const EdgeInsets.all(7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          carmack.titulo,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffc80000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          carmack.descricao,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(variascarmack.img)
                      ],
                    ),
                  ),

                  // Empresas
                  Container(
                    margin: const EdgeInsets.all(7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Empresas',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffc80000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       
                        SizedBox(height: 10), //empresa softdisk
                        Text(
                          softdisk.titulo,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(softdisk.img),
                        Text(
                          softdisk.descricao,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        
                        SizedBox(height: 10), //empresa oculus
                        Text(
                          oculus.titulo,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(oculus.img),
                        Text(
                          oculus.descricao,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 10), //empresa 
                        Text(
                          idsoftware.titulo,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset(idsoftware.img, height:200, width:200), //empresa id software
                        Text(
                          idsoftware.descricao,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}