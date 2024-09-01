import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:hisaab/landing_page.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class ThemeNotifier extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  ThemeData get lightTheme => ThemeData(
        fontFamily: 'Dongle',
        brightness: Brightness.light,
        primaryColor: const Color.fromRGBO(234, 228, 221, 1),
        primaryColorDark: const Color.fromRGBO(41, 95, 152, 1),
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(234, 228, 221, 1),
          secondary: Color.fromRGBO(41, 95, 152, 1),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(41, 95, 152, 1),
            foregroundColor: const Color.fromRGBO(234, 228, 221, 1),
            textStyle: const TextStyle(
              fontFamily: 'Lalezar',
              fontSize: 24.0,
              color: Colors.white,
            ),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(12.0), // Change the border radius here
            ),
          ),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(234, 228, 221, 1),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lalezar',
            color: Color.fromRGBO(41, 95, 152, 1),
          ),
          displayMedium: TextStyle(
            fontSize: 32.0,
            fontFamily: 'Lalezar',
            color: Color.fromRGBO(41, 95, 152, 1),
          ),
          displaySmall: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Dongle',
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontSize: 32.0,
            height: 1,
            fontFamily: 'Dongle',
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 24.0,
            height: 1,
            fontFamily: 'Dongle',
            color: Colors.black,
          ),
          bodySmall: TextStyle(
            fontSize: 18.0,
            height: 1,
            fontFamily: 'Dongle',
            color: Colors.black,
          ),
        ),
      );

  ThemeData get darkTheme => ThemeData(
        fontFamily: 'Dongle',
        brightness: Brightness.dark,
        primaryColor: const Color.fromRGBO(41, 95, 152, 1),
        primaryColorDark: const Color.fromRGBO(234, 228, 221, 1),
        colorScheme: const ColorScheme.dark(
          primary: Color.fromRGBO(41, 95, 152, 1),
          secondary: Color.fromRGBO(234, 228, 221, 1),
          onPrimary: Colors.black,
          onSecondary: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(234, 228, 221, 1),
            foregroundColor: Color.fromRGBO(41, 95, 152, 1),
            textStyle: const TextStyle(
              fontFamily: 'Lalezar',
              fontSize: 24.0,
              color: Colors.black,
            ),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(12.0), // Change the border radius here
            ),
          ),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(41, 95, 152, 1),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lalezar',
            color: Color.fromRGBO(234, 228, 221, 1),
          ),
          displayMedium: TextStyle(
            fontSize: 32.0,
            fontFamily: 'Lalezar',
            color: Color.fromRGBO(234, 228, 221, 1),
          ),
          displaySmall: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Dongle',
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontSize: 32.0,
            height: 1,
            fontFamily: 'Dongle',
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontSize: 24.0,
            height: 1,
            fontFamily: 'Dongle',
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            fontSize: 18.0,
            height: 1,
            fontFamily: 'Dongle',
            color: Colors.white,
          ),
        ),
      );

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          title: 'Hisaab',
          theme: themeNotifier.lightTheme,
          darkTheme: themeNotifier.darkTheme,
          themeMode: themeNotifier.themeMode,
          home: const LandingPage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
