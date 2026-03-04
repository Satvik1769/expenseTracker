import 'package:expense/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 150, 84, 220),
);

var kColorDarkScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kColorDarkScheme,
        appBarTheme: AppBarTheme(
          // backgroundColor: kColorDarkScheme.onPrimaryContainer,
        ),
        cardTheme: CardThemeData(
          color: kColorDarkScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorDarkScheme.primaryContainer,
              foregroundColor: kColorDarkScheme.onPrimaryContainer,
            )
        ),

      ),
      // themeMode: ThemeMode.system,  this is default
      theme: ThemeData(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(
            backgroundColor: kColorScheme.onPrimaryContainer,
        foregroundColor: kColorScheme.primaryContainer),
        cardTheme: CardThemeData(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            )
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 18,
          )
        ),
      ),
      home: const Expenses(),
    );
  }
}

