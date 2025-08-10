import 'package:flutter/material.dart';
import 'package:playgroundflutter/apis/api_post_login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This widget is the root of your application.
  final TextEditingController _userId = TextEditingController();
  final TextEditingController _passWord = TextEditingController();
  final ApiPostLogin api = ApiPostLogin();

  void fBearerToken()async{
    String userId = _userId.text.trim();
    String password = _passWord.text.trim();

    if (userId.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Preencha usuário e senha")),
      );
      return;
    }

    Map<String,dynamic> token = await api.fLogin(userId, password);

    if (token["apiResponse"] == 200 ||token["apiResponse"] == 201) {
      print("Token recebido: $token");
      // Aqui você pode navegar para outra tela
      // Navigator.pushReplacement(...)
    } 
    else if(token["apiResponse"] == 401) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Usuário ou senha inválidos")),
      );
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(token["message"])),
      );
    }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.all(16.0),

         child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: TextFormField(
                    controller: _userId,
                    decoration: InputDecoration(labelText: "Usuário"),         
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: TextFormField(
                    controller: _passWord,
                    decoration: InputDecoration(labelText: "Senha"),  
                    obscureText: true,       
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child:Text("Acessar"),
                  onPressed:fBearerToken ,
                ),

              ],
            ),
          ),
       ),
      );
  }
}