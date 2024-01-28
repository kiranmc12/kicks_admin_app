import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/bottom_navbar/bottom_navbar.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/edit_invenotry/edit_inventory.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/home_screen.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/sign_in/sign_in.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/splash_screen/splash_screen.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get/get_inventory_response_model/datum.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const ScreenSplash());
      case Routes.signInPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenSignIn());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (ctx) => const ScreenHome());
      case Routes.bottomNav:
        return MaterialPageRoute(builder: (ctx) => const ScreenBottombar());
        case Routes.editScreen:
        return arguments is Inventory
            ? MaterialPageRoute(
                builder: (ctx) => ScreenEditInventory(inventory: arguments))
            : _errorScreen();
      default:
        return _errorScreen();
    }
  }

  static Route<dynamic> _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: const Center(
          child: Text("Error while navigating"),
        ),
      );
    });
  }
}
