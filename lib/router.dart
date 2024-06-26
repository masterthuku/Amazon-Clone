import 'package:amazone/common/widgets/bottom_bar.dart';
import 'package:amazone/features/admin/screens/add_product_screen.dart';
import 'package:amazone/features/auth/screens/auth_screen.dart';
import 'package:amazone/features/home/screens/category_screen.dart';
import 'package:amazone/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case HomeSreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeSreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
      case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );
      case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealsScreen(
          category: category,
        ),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Page does not exist'),
          ),
        ),
      );
  }
}
