import 'dart:math';
import 'package:flutter/material.dart';

class BackgroundHome extends StatelessWidget {
  const BackgroundHome({super.key});

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xff2E305F), Color(0xff202333)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8]),
    );
    return Stack(
      children: [
        //Fondo morado
        Container(
          decoration: boxDecoration,
        ),

        //Caja Rosada
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox(),
        ),
        Positioned(bottom: -200, right: -100, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  //const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        //color: Colors.pink,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ])),
      ),
    );
  }
}
