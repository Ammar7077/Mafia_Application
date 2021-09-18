import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

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
                fontSize: height * 0.023, fontWeight: FontWeight.w800),
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

    return Scaffold(

      appBar: AppBar(
        // iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey,
        actions: [
          InkWell(
            onTap: () {
              // Navigator.of(context).pushReplacementNamed('');
              },
            child: Container(
              margin: EdgeInsets.only(right: width*0.02,left: width*0.02),
              child: Icon(
                Icons.settings,
                color: Colors.black,
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
                height: height*0.05,
              ),
              Container(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'MAFIA',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),

      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.grey,
            Colors.black,
          ]),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                btn("Create Game", Colors.red)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
