import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/cubit/counter_cubit.dart';
import 'package:flutter_application_1/presentation/screens/home_screen.dart';
import 'package:flutter_application_1/presentation/screens/second_screen.dart';
import 'package:flutter_application_1/presentation/screens/third_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) =>
                HomeScreen(title: 'Home Screen', color: Colors.blueAccent));
        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) =>
                SecondScreen(title: 'Second Screen', color: Colors.redAccent));
        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) =>
                ThirdScreen(title: 'Third Screen', color: Colors.greenAccent));
        break;
      default:
        return MaterialPageRoute(
            builder: (_) =>
                ThirdScreen(title: 'Third Screen', color: Colors.greenAccent));
    }
  }
}
