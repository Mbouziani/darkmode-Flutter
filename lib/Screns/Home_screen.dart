import 'package:darkmode/provider/Theme_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider1 = Provider.of<ThemeProvider>(context);
    final TextTheme =
        themeProvider1.themeMode == ThemeMode.dark ? 'DarkMode' : 'LightMode';
    return Scaffold(
      appBar: AppBar(
        title: const Text("DarkMode App"),
        actions: [
          Switch.adaptive(
            value: themeProvider1.isDarkMode,
            onChanged: (value) {
              final themeProvider2 =
                  Provider.of<ThemeProvider>(context, listen: false);
              themeProvider1.toggleTheme(value);
            },
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Theme $TextTheme'),
            const Icon(
              Icons.home_filled,
            ),
            MaterialButton(
              child: const Text('Getdata'),
              onPressed: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
