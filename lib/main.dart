import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/home_screen.dart';
import 'package:provider1/provider/count_provider.dart';
import 'package:provider1/provider/example_one_provider.dart';
import 'package:provider1/provider/favourite_provider.dart';
import 'package:provider1/screen/count_example.dart';
import 'package:provider1/screen/examle_one.dart';
import 'package:provider1/screen/favourite/favourite_screen.dart';
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
        ChangeNotifierProvider(create: (context) => FavouriteItemProvider(),)
      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FavouriteScreen(),
    ),
   );
  }
}

