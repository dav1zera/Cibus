import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              // Aqui mudamos a direção: começa no topo e termina na base
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(2, 48, 71, 1.0), // 0% (Cor mais escura no topo)
                Color.fromRGBO(33, 158, 188, 0.53), // 53%
                Color.fromRGBO(
                  142,
                  202,
                  230,
                  0.44,
                ), // 100% (Cor mais clara embaixo)
              ],
              stops: [0.0, 0.53, 1.0],
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image(
                  image: AssetImage("assets/logo.png"),
                  width: 338,
                  height: 109,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
