import 'package:disenos_flutter/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text("Esto es una app con 3 disenos de menu"),
      ),
    );
  }
}
