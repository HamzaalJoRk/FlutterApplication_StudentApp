import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_project/Login.dart';
import 'package:test_project/NavPages/Block.dart';
import 'package:test_project/body.dart';
import 'NavPages/MyInfo.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LoginScreen()
));

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages = [
    Body(),
    Bolck(),
    MyInfo(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState((){
      currentIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  pages[currentIndex],
      backgroundColor: HexColor("#E7E7F0"),
      bottomNavigationBar: Container(
        height: 75,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -12),
              blurRadius: 35,
              color: Colors.black12,
            )
          ]
        ),
        child: BottomNavigationBar(
          onTap: onTap,
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: HexColor("#475071"),
          showUnselectedLabels: false,
          showSelectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.apps),
                  label: 'State'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Me'
            ),
          ],
        ),
      ),
    );
  }
}