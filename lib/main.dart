import 'package:darkmode/Screns/Home_screen.dart';
import 'package:darkmode/provider/Theme_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          themeMode: themeProvider.themeMode,
          theme: ThemePersonalised.lightTheme,
          darkTheme: ThemePersonalised.darkTheme,
          debugShowCheckedModeBanner: false,
          home: Homescreen(),
        );
      });
}
