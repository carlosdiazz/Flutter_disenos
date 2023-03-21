import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xff5EE8C5), Color(0xff30BAD6)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5]),
    );
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          children: const [Page1(), Page2()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: const [Background(), MainContent()]);
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(
          image: AssetImage('assets/scroll-1.png'),
        ));
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);

    return SafeArea(
      bottom: false, //No quiero que me protega la parte de abajo
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          const Text(
            '12°',
            style: textStyle,
          ),
          const Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down_sharp, size: 100)
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
          child: TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Bienvenido',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA), shape: StadiumBorder()),
      )),
    );
  }
}
