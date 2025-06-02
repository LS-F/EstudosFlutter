import 'package:flutter/material.dart';
import 'package:playgroundflutter/alerts/AlertDialog1.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ValidadorCpf extends StatefulWidget {
  const ValidadorCpf({super.key});

  @override
  State<ValidadorCpf> createState() => _ValidadorCpfState();
}

class _ValidadorCpfState extends State<ValidadorCpf> {
  TextEditingController _cpf = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  validaCPF(_cpf){
    String cpfLimpo = _cpf.replaceAll(RegExp(r'\D'), '');
    var resto1 = 0;
    var resto2 = 0;
    var digito1 = 0;
    var digito2 = 0;
    var cont = 2;
    var somaNumeros = 0;
    List<int> numerosCPF = cpfLimpo.split('').map((e) => int.parse(e)).toList();
    
 
    if(cpfLimpo.length < 11){
      
      return AlertaErroIncompletoCPF(context);
    }

    for (int i = 8; i >= 0 ; i--) {
      somaNumeros += numerosCPF[i] * cont;
      cont++;
    }
    resto1 = somaNumeros % 11;

    if(resto1 >= 2){
      digito1 = 11 - resto1;
    }

    somaNumeros = 0;
    cont = 2;

    for (int i = 9; i >= 0 ; i--) {
      somaNumeros += numerosCPF[i] * cont;
      cont++;
    }
    resto2 = somaNumeros % 11;

    if(resto2 >= 2){
      digito2 = 11 - resto2;
    }

    if(digito1 != numerosCPF[9] || digito2 != numerosCPF[10] ){
      return AlertaInvalidoCPF(context);
    }else{
      return AlertaValidoCPF(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Playground - Validador CPF"),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
          key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                controller: _cpf,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [cpfFormatter],
                decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Digite o CPF"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  child: const Text("Valida CPF"),
                  onPressed: () {
                    validaCPF(_cpf.text);
                  } 
                  ),
            ]),
          ),
        ),
      ),
    );
  }
}
