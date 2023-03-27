import 'package:disenos_flutter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Vista Basica'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, AppRoute.basicDesignScreen);
            },
          ),
          ListTile(
            leading: const Icon(Icons.home_max),
            title: const Text('Vista Modernas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, AppRoute.homeScreen);
            },
          ),
          ListTile(
            leading: const Icon(Icons.home_repair_service),
            title: const Text('Vista Scroll'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, AppRoute.scrollDesignScrenn);
            },
          ),
        ],
      ),
    );
  }
}
