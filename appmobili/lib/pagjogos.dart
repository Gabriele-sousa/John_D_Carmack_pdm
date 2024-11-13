import 'package:flutter/material.dart';
import 'Jogo.dart';

final List<Jogo> jogo = [
  Jogo(
    titulo: 'Jogos',
    imagem: ['../img/Doom.png', '../img/Tela1.png', '../img/FinalTela1.png'],
    texto:
        'O jogo Doom 3, se passa em um universo controlado de forma opressiva e apocalíptico, gira em torno de um fuzileiro espacial sem nome que trabalha para a UAC (Union Aerospace Corporation), lutando contra legiões de demônios e mortos-vivos no submundo e na terra de uma invasão apocalíptica, a fim de sobreviver e posteriormente, na história, salvar a humanidade do perigo.',
    nome: 'Doom 3',
    textojogabilidade:
        'Doom é um jogo de tiro em primeira pessoa, que é jogado através do ponto de vista do personagem principal. O objetivo de cada fase é simplesmente encontrar a saída que leva ao próximo nível, um botão com um sinal "EXIT" em vermelho, enquanto que o objetivo é sobreviver a todos os perigos ao longo do caminho.',
  ),
  Jogo(
    titulo: 'Jogos',
    imagem: ['../img/Quake.png', '../img/Tela2.png', '../img/FinalTela2.png'],
    texto:
        'Quake 4 é um jogo de tiro em primeira pessoa ambientado em um mundo onde os humanos lutam para destruir uma grande ameaça: os Stroggs, uma raça alienígena que combina partes orgânicas com implantes cibernéticos para aumentar suas capacidades assassinas. Com belos gráficos proporcionados pela engine do Doom 3, o jogo entra para a lista de grandes lançamentos da famosa Id Software.',
    nome: 'Quake 4',
    textojogabilidade:
        'A jogabilidade é caracterizada por ação frenética e objetivos rápidos, que requerem pouco raciocínio e muitos tiros. Suporta até 16 jogadores simultaneamente e a missão de Kane é invadir o complexo central e matar o cérebro principal dos Stroggs, o que incapacita os outros alienígenas.',
  ),
  Jogo(
    titulo: 'Jogos',
    imagem: ['../img/Wolfs.png', '../img/Tela3.png', '../img/FinalTela3.png'],
    texto:
        'Durante a II Guerra Mundial, William “B.J.” Blazkowicz, um agente de elite dos Aliados, recebeu a missão de infiltrar-se no Castelo Wolfenstein para roubar os planos da Operação Eisenfaust, um projeto nazista que visa criar um exército de mutantes. Após ser capturado, Blazkowicz conseguiu escapar, mas agora enfrenta um labirinto repleto de soldados armados. Sua nova missão é roubar os planos secretos antes que os nazis possam concretizar sua ameaça.',
    nome: 'Wolfenstein 3D',
    textojogabilidade:
        'É um jogo de tiro em primeira pessoa, em que o  jogador enfrenta inimigos com diversas armas. A exploração permite coletar itens e descobrir segredos, enquanto a inteligência artificial dos inimigos aumenta o desafio. Com gráficos simples e uma estética retro, o jogo estabeleceu muitas bases para o gênero FPS.',
  ),
];

class Jogos extends StatelessWidget {
  const Jogos({super.key});

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
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                jogo[0].titulo!,
                style: TextStyle(
                  color: Color.fromARGB(255, 211, 1, 1),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  fontFamily: "CharisSIL",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: jogo.map((jogo_) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
                        child: Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DetalhesjogoPage(jogo: jogo_);
                                    },
                                  ),
                                );
                              },
                              child: Image(
                                image: AssetImage(jogo_.imagem[0]),
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              jogo_.nome,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "CharisSIL",
                              ),
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetalhesjogoPage extends StatelessWidget {
  final Jogo jogo;

  const DetalhesjogoPage({super.key, required this.jogo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 0, 0, 0),
          size: 40,
        ),
        title: Text(
          'Voltar',
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 223, 0, 0),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('img/fundotela1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      Text(
                        jogo.nome,
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 212, 0, 0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        jogo.texto,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image(
                        image: AssetImage(jogo.imagem[1]),
                        fit: BoxFit.cover,
                        width: 450,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Jogabilidade',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        jogo.textojogabilidade,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image(
                        image: AssetImage(jogo.imagem[2]),
                        fit: BoxFit.cover,
                        width: 450,
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
