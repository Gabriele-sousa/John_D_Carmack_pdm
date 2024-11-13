import 'package:flutter/material.dart';
import 'biografia.dart';
import 'home.dart';
import 'pagjogos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int telaAtual = 0;

  void trocandoTela(int novaTela) {
    setState(() {
      telaAtual = novaTela;
    });
  }

  final List<Widget> telas = [
    const Home(),
    const Biografia(),
    const Jogos(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: telas[telaAtual],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 180, 0, 0),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: telaAtual,
        onTap: trocandoTela,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Biografia",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Jogos",
          ),
        ],
      ),
    );
  }
}
