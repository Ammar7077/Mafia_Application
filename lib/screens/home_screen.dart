import 'package:flutter/material.dart';
import 'package:mafia_app/drawer.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {

  _HomeScreen createState()=> _HomeScreen();
}

class _HomeScreen extends State<HomeScreen>{

  final darkGrey= Colors.black26;
  var red = Colors.red;
  var black = Colors.black;
  var white = Colors.white;
  var blue=Colors.blue;
  // var grey= Colors.grey;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    SizedBox btn(title, btnColor) {
      return SizedBox(
        width: width*0.9,
        child: ElevatedButton(
          onPressed: () {Navigator.of(context).pushReplacementNamed('CreateGameScreen');},
          child: Text(
            title,
            style: TextStyle(
              fontSize: height * 0.023,
              fontWeight: FontWeight.w800,
            ),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
              ),
            ),
            padding: MaterialStateProperty.all(EdgeInsets.all(height * 0.02)),
            backgroundColor: MaterialStateProperty.all(btnColor),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          // iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: darkGrey,
          actions: [
            InkWell(
              onTap: () {
                // Navigator.of(context).pushReplacementNamed('');
              },
              child: Container(
                margin: EdgeInsets.only(right: width*0.02,left: width*0.02),
                child: Icon(
                  Icons.settings,
                  color: white,
                ),
              ),
            ),
          ],
          title: Container(
            padding: const EdgeInsets.only(left: 20),   //width*0.05
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'imgs/Mafia_Logo.png',
                  fit: BoxFit.contain,
                  height: height*0.05,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'MAFIA',
                    style: TextStyle(color: red, fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
        ),
        //------------ body: ------------//
        body: Container(
          height: height,
          width: width,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  btn("Create Game", red),
                ],
              ),
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: white,
        //   onPressed: ()=> setState((){
        //     black = black==Colors.black? Colors.white:Colors.black;
        //     white= white==Colors.white?Colors.black:Colors.white;
        //   }),
        // ),
      ),
    );
  }

  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}


