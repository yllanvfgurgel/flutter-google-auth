import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn _googleSignIn =
      GoogleSignIn(clientId: "sua chave google aqui");

  var usuarioLogado = false;

  Future<void> _handleSignIn() async {
    var resultado = await _googleSignIn.signIn();
    print(resultado);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Astro web",
        home: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/dotgrid.png'),
                    fit: BoxFit.cover,
                    opacity: 1)),
            child: Center(
              child: Container(
                height: 600,
                width: 500,
                color: Colors.white,
                child: ElevatedButton(
                  child: Row(
                    children: const [
                      Icon(Icons.login),
                      Text("Logar com o Google")
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                  onPressed: _handleSignIn,
                ),
                padding: const EdgeInsets.fromLTRB(150, 275, 150, 275),
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ));
  }
}
