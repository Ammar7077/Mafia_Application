import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class MyDrawer extends StatefulWidget {
  _MyDrawer createState()=>_MyDrawer();
}

class _MyDrawer extends State<MyDrawer> {

  ThemeMode themeMode = ThemeMode.dark;

  bool _swValue = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String personLogo =
        "https://mk0anatomieunes58h83.kinstacdn.com/wp-content/themes/cera/assets/images/avatars/user-avatar.png";
    return Drawer(
      child: Container(
        // width: width*0.65,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              accountName: Container(
                margin: EdgeInsets.only(left: 90, bottom: 30),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Ammar Omari",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              accountEmail: Container(
                margin: EdgeInsets.only(right: 50, bottom: 30),
                alignment: Alignment.centerRight,
                child: Text(
                  "Developer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(personLogo),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.home, size: 32),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.white,
              height: height * 0.02,
            ),

            ListTile(
              leading: Icon(Icons.label_important),
              title: Row(
                children: [
                  Text(
                    "Light Theme",
                    style: TextStyle(color: Colors.white),
                  ),
                  Switch(
                    value: _swValue,
                    onChanged: (bool value) {

                      setState((){
                        _swValue= value;
                        if(_swValue==false){
                          themeMode = ThemeMode.light;
                        }
                        else themeMode = ThemeMode.dark;
                      });

                    },
                  ),
                ],
              ),
              onTap: () {},
            ),

            Divider(
              color: Colors.white,
              height: height * 0.02,
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet_outlined),
              title: Text(
                "Wallet",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.white,
              height: height * 0.02,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            //------Log Out ----//
            Divider(
              color: Colors.white,
              height: height * 0.02,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Log Out",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}




