import 'package:flutter/material.dart';
import 'package:calculadora_imc_flutter/Screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Calculadora de IMC',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.blueGrey,
          secondary: Colors.blueGrey.shade100,
        ),
        appBarTheme: const AppBarTheme(color: Colors.orangeAccent),
      ),
      home: InputPage(),
    );
  }
}
