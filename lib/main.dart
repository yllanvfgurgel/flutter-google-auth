import 'package:flutter/material.dart';

import 'package:webastro/pages/home_page.dart';

void main() {
  runApp(AstroApp());
}

class AstroApp extends StatefulWidget {
  const AstroApp({Key? key}) : super(key: key);

  @override
  State<AstroApp> createState() => _AstroAppState();
}

class _AstroAppState extends State<AstroApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Astro Web",
      home: Scaffold(
        body: HomePage(),
        backgroundColor: Colors.black,
      ),
    );
  }
}
