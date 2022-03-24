import 'package:flutter/material.dart';

import '../components/astro_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(children: [AstroNavigationBar()]),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/dotgrid.png"), fit: BoxFit.cover)),
    );
  }
}
