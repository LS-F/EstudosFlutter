import 'package:flutter/material.dart';
import 'package:playgroundflutter/apis/api_get_produtos.dart';
import 'package:playgroundflutter/model/get_produtos_model.dart';
import 'package:playgroundflutter/widgets/splash_screen.dart';

void main()  {
  // ApiGetProdutos api  = ApiGetProdutos();
  // List<GetProdutos> Produtos = await api.fGetProds();

  // for (var n in Produtos) {
  //   print(n.toJson());
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 131, 226, 63)),
        useMaterial3: true,
      ),
      home: Container(
        child: const SplashScreen(),
      )
    );
  }
}


