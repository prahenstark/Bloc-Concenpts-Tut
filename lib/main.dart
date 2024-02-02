import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/router/app_router.dart';
import 'logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
