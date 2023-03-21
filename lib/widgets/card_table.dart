import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  //const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'General'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.green, icon: Icons.car_crash, text: 'General'),
          _SingleCard(
              color: Colors.greenAccent,
              icon: Icons.car_rental,
              text: 'General'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.yellow,
              icon: Icons.av_timer_sharp,
              text: 'General'),
          _SingleCard(
              color: Colors.purple, icon: Icons.home_sharp, text: 'General'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'General'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    var column = Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundColor: color,
        radius: 30,
        child: Icon(
          icon,
          size: 40,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(
          color: color,
        ),
      )
    ]);
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
