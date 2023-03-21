import 'package:disenos_flutter/screens/basic_design.dart';
import 'package:disenos_flutter/screens/scroll_design.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const basicDesignScreen = 'basicDesignScreen';
  static const scrollDesignScrenn = 'scrollDesignScrenn';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutess = {
      basicDesignScreen: (_) => const BasicDesignScreen(),
      scrollDesignScrenn: (_) => const ScrollScreen()
    };
    return appRoutess;
  }
}
