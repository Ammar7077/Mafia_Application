import 'package:flutter/material.dart';
import 'package:mafia_app/drawer.dart';

class CreateGameScreen extends StatefulWidget {
  @override
  _CreateGameScreenState createState() => _CreateGameScreenState();
}

class _CreateGameScreenState extends State<CreateGameScreen> {

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

    Widget typesOfGame(type){
      return Container(
        padding: EdgeInsets.only(left: width*0.05),
        margin: EdgeInsets.only(bottom: height*0.02,top: height*0.02),
        child: Text(type,style: TextStyle(fontSize: height*0.032),)
      );
    }
    Widget addTypeBtn(){
      return SizedBox(
        width: width * 0.5,
        child: ElevatedButton(
          onPressed: () {

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add type",
                style: TextStyle(
                    fontSize: width * 0.039, fontWeight: FontWeight.w800),
              ),
              Icon(Icons.add,size: width*0.05,),
            ],
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            padding: MaterialStateProperty.all(
                EdgeInsets.all(height * 0.02)),
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
        ),
      );
    }
    Widget startBtn(){
      return SizedBox(
        width: width * 0.9,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('HomeScreen');
          },
          child: Text(
            "Start",
            style: TextStyle(
                fontSize: height * 0.029, fontWeight: FontWeight.w800),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            padding: MaterialStateProperty.all(
                EdgeInsets.all(height * 0.02)),
            backgroundColor: MaterialStateProperty.all(Colors.red),
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
                margin: EdgeInsets.only(right: width * 0.02, left: width * 0.02),
                child: Icon(
                  Icons.settings,
                  color: white,
                ),
              ),
            ),
          ],
          title: Container(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'imgs/Mafia_Logo.png',
                  fit: BoxFit.contain,
                  height: height * 0.05,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'MAFIA',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          height: height,
          width: width,
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(colors: [
          //     Colors.grey,
          //     Colors.blue,
          //   ]),
          // ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                typesOfGame("Mafia"),
                typesOfGame("A"),
                addTypeBtn(),
                SizedBox(height: height*0.023,),
                startBtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
