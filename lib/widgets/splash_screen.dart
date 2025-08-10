import 'package:flutter/material.dart';
import 'package:playgroundflutter/widgets/homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _telaInicial();
    super.initState();
    
  }
  
  _telaInicial() async {
    await Future.delayed(const Duration(milliseconds: 3000),(){});
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[900],
      body: Center(
        child: Image.asset("lib/assets/images/gorila_do_dedinho.jpg"),
      ),
    );
  }
}