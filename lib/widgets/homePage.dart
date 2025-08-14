import 'package:flutter/material.dart';
import 'package:playgroundflutter/apis/api_post_login.dart';
import 'package:playgroundflutter/screens/produto.dart';

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
      token['access_token'];
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Produto()),
      );
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
                Container(
                  width: 300,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ) ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,2,5,0),
                        child: Image.asset("lib/assets/images/login-de-usuario.png",
                          height:25,
                          width: 25,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: TextFormField(
                          controller: _userId,   
                          decoration: InputDecoration(
                            labelText: "Usuário",
                            border:InputBorder.none,
                          ),     
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              
                Container(
                  width: 300,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ) ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,2,5,0),
                        child: Image.asset("lib/assets/images/senha.png",
                          height:25 ,
                          width: 25,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: TextFormField(
                          controller: _passWord,
                          decoration: InputDecoration(labelText: "Senha",
                            border:InputBorder.none,
                          ),  
                          obscureText: true,       
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.remove_red_eye_sharp), 
                        // icon: const Icon(Icons.remove_red_eye), 
                        iconSize: 19,
                        onPressed: (){
                                        
                        },
                      )
                  ],
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