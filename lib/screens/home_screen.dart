import 'package:flutter/material.dart';
import 'package:disenos_flutter/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [const BackgroundHome(), _HomeBody()]),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  //const _HomeBody({
  //  super.key,
  //});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        //titulo
        const PageTitle(),

        //Card table
        CardTable(),
      ]),
    );
  }
}
