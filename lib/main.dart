import 'package:flutter/material.dart';
import 'package:mafia_app/provider.dart';
import 'package:mafia_app/screens/create_game_screen.dart';
import 'package:mafia_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mafia in Arabic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<MyProvider>(
        create: (_)=> MyProvider(),
        child: MyHomePage()
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: HomeScreen(),

    );
  }
}
