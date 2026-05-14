import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Tarefa:',
              hintText: 'Digite a tarefa a ser realizada',
              // border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              errorText: null,
              prefixText: 'R\$ ',
              suffixText: ',00', // ou cm, kg, etc
              labelStyle: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            keyboardType: TextInputType.number,
            // obscureText: true, // igual a senha ****
            // obscuringCharacter: "*", // caracter para ocultar o texto
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
