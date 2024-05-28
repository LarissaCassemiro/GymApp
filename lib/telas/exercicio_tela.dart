// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ExercicioTela extends StatelessWidget {
  const ExercicioTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Puxada Alta Pronada - Treino A ")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FAB FOI CLICADO");
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("enviar foto"),
            ),
            const Text(
              "como fazer?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                 fontSize: 18
                 ),
            ),
            const Text("Segura com as duas mãoes na barra, mantem a coluna reta, e puxa"), 
            const Divider(),
              const Text(
              "como estou me sentindo?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                 fontSize: 18
                 ),
            ),
            const Text("Senti bastamte ativação hoje")
          ],
        )
    );
  }
}
