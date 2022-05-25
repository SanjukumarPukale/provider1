import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/home_screen.dart';
import 'package:provider1/provider/count_provider.dart';
import 'package:provider1/provider/example_one_provider.dart';
import 'package:provider1/provider/favourite_provider.dart';
import 'package:provider1/provider/theme_changer_provider.dart';
import 'package:provider1/screen/count_example.dart';
import 'package:provider1/screen/examle_one.dart';
import 'package:provider1/screen/favourite/dark_theme.dart';
import 'package:provider1/screen/favourite/favourite_screen.dart';
import 'package:provider1/screen/favourite/value_notify_listener.dart';
import 'package:provider1/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CountProvider()),
          ChangeNotifierProvider(create: (context) => ExampleOneProvider()),
          ChangeNotifierProvider(
            create: (context) => FavouriteItemProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => ThemeChanger(),
          ),
        ],
        child: Builder(
          builder: (context) {
            final themeChanger = Provider.of<ThemeChanger>(context);
            return MaterialApp(
              title: 'Flutter Demo',
              themeMode: themeChanger.themeMode,
              theme: ThemeData(
                brightness: Brightness.light,
                primarySwatch: Colors.blue,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.purple,
                primaryColor: Colors.purple,
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.teal,
                ),
                iconTheme: IconThemeData(
                  color: Colors.red,
                )

              ),
              home: NotifyListenerScreen(),
            );
          },
        ));
  }
}
