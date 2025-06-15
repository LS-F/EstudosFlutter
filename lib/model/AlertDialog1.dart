import 'package:flutter/material.dart';

AlertaErroIncompletoCPF(BuildContext context) { 
    // configura o button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context,false);
     },
  );

  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("CPF inválido"),
    content: Text("O CPF digitado está incompleto."),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}

AlertaInvalidoCPF(BuildContext context) { 
    // configura o button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context,false);
     },
  );

  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("CPF Inválido"),
    content: Text("O CPF digitado é inválido"),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}

AlertaValidoCPF(BuildContext context) { 
    // configura o button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context,false);
     },
  );

  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("CPF Válido"),
    content: Text("O CPF digitado é válido"),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}