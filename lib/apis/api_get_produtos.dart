import 'dart:convert';
import 'package:playgroundflutter/model/get_produtos_model.dart';
import 'package:http/http.dart' as http;

class ApiGetProdutos {
    final _baseURL = 'http://localhost:9971/rest/wsprodutos/'; 

    Future <List<GetProdutos>>fGetProds() async{

        try{
            http.Response response = await http.get(Uri.parse(_baseURL));
            
            if(response.statusCode != 200){
                print('fGetProds StastusCode: ${response.statusCode}');
                return [];
            }else{
                var json = jsonDecode(utf8.decode(response.bodyBytes));

                List<GetProdutos> Produtos = [];
                for (var n in json) {
                  Produtos.add(GetProdutos.fromJson(n));
                }
                return Produtos;
            }   

        }catch(e){
            print('fGetProds StastusCode: ${e.toString()}');
            return [];
        }
    }

}