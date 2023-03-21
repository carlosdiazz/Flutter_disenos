import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Carlos Diaz',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10),
            Text('La Vega')
          ],
        ),
      ),
    );
  }
}
