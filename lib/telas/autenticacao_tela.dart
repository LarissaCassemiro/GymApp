import 'package:flutter/material.dart';
import 'package:flutter_application_1/_comum/minhas_cores.dart';
import 'package:flutter_application_1/componentes/decoracao_campo_autenticacao.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool queroEntrar = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [
                  MinhasCores.azulTopoGradiente,
                  MinhasCores.azulBaixoGradiente,
                ])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset("assets/logo.png", height: 128),
                      const Text(
                        "GymApp",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("E-mail"),
                        validator: (String? value) {
                          if (value == null) {
                            return "O e-mail não pode está vazio";
                          }
                          if (value.length < 5) {
                            return "O e-mail é muito curto";
                          }
                          if (!value.contains("@")) {
                            return "O e-mail é inválido";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("Senha"),
                        obscureText: true,
                        validator: (String? value) {
                          if (value == null) {
                            return "A senha não pode está vazia";
                          }
                          if (value.length < 5) {
                            return "A senha é muito curta";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      Visibility(
                        visible: !queroEntrar,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: getAuthenticationInputDecoration(
                                  "Confirme a senha"),
                              obscureText: true,
                                    validator: (String? value) {
                          if (value == null) {
                            return "O confirmação da senha não pode está vazia";
                          }
                          if (value.length < 5) {
                            return "A confirmação da senha é muito curta";
                          }
                          return null;
                        },
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration:
                                  const InputDecoration(label: Text("Nome")),
                                    validator: (String? value) {
                          if (value == null) {
                            return "O e-mail não pode está vazio";
                          }
                          if (value.length < 5) {
                            return "O e-mail é muito curto";
                          }
                          return null;
                        },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          botaoPrincipalClicado();
                        },
                        child: Text((queroEntrar) ? "Entrar" : "Cadastrar"),
                      ),
                      const Divider(),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              queroEntrar = !queroEntrar;
                            });
                          },
                          child: Text((queroEntrar)
                              ? "Ainda não tem uma conta? Cadastre-se"
                              : "Já tem conta? Entrar:")),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  botaoPrincipalClicado() {
    if (_formKey.currentState!.validate()) {
      print ("Fomr válido");
    }else{
      print ("Form inválido");
    }
  }
}
