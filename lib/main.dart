import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mafia_app/drawer.dart';
import 'package:mafia_app/provider.dart';
import 'package:mafia_app/screens/create_game_screen.dart';
import 'package:mafia_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());


// ignore: must_be_immutable
class MyApp extends StatelessWidget {

  ThemeMode themeMode = ThemeMode.dark;

  var red = Colors.red;
  var black = Colors.black;
  var white = Colors.white;
  var blue = Colors.blue;
  final grey= Colors.grey;
  final lightGrey = Colors.white24;
  final darkGrey= Colors.black26;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mafia in Arabic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: grey),
      darkTheme: ThemeData(canvasColor: lightGrey),
      themeMode: themeMode,

      home: ChangeNotifierProvider<MyProvider>(
          create: (_)=> MyProvider(),
          child:Scaffold(
            drawer: MyDrawer(),

            body: HomeScreen(),
          ),
      ),
      routes: {
        'HomeScreen':(context) => HomeScreen(),
        'CreateGameScreen':(context) =>CreateGameScreen(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ThemeMode themeMode = ThemeMode.dark;

  var red = Colors.red;
  var black = Colors.black;
  var white = Colors.white;
  var blue = Colors.blue;
  final grey= Colors.grey;
  final lightGrey = Colors.white24;
  final darkGrey= Colors.black26;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return MaterialApp(
      title: 'Mafia in Arabic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: grey),
      darkTheme: ThemeData(canvasColor: lightGrey),
      themeMode: ThemeMode.system,

      home: ChangeNotifierProvider<MyProvider>(
          create: (_)=> MyProvider(),
          child: Scaffold(
            drawer: MyDrawer(),

            body: HomeScreen(),
          ),
      ),
      routes: {
        'HomeScreen':(context) => HomeScreen(),
        'CreateGameScreen':(context) =>CreateGameScreen(),

      },
    );

  }
}
