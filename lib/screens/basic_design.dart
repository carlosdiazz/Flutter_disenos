import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Image
          const Image(
            image: AssetImage('assets/fondo1.jpeg'),
          ),

          //Titulo
          const Title(),

          //Button Section
          const ButtonSection(),

          //Descripcion
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Text(
                'Laborum cupidatat esse enim Lorem minim velit qui ut occaecat sit do ut labore. Aute non consequat et aliqua cillum amet elit ex cillum. Sit in enim anim sint irure sit. Do ea labore nisi laborum aute elit aute. Id sit pariatur aliqua minim velit. Culpa id anim ad anim quis nulla reprehenderit dolore velit nulla laboris laborum. Nisi enim occaecat qui veniam exercitation veniam cupidatat amet nisi et sint. Enim reprehenderit qui commodo ullamco mollit. Deserunt eu nisi aliqua sint occaecat quis incididunt. Nostrud velit nostrud aliqua velit eu eiusmod nostrud deserunt. Voluptate in irure nisi excepteur sunt laboris nostrud reprehenderit eiusmod pariatur aute dolore. Veniam eiusmod velit anim irure est. Sit do proident in velit nostrud ullamco. Laboris anim id dolor mollit exercitation eiusmod minim tempor sit sit anim proident.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Loma de Guagui',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('La Vega, Republica Dominicana', style: TextStyle())
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(
            icon: Icons.route,
            text: 'Route',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon), Text(text)],
    );
  }
}
