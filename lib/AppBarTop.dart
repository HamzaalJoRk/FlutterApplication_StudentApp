
import 'package:flutter/material.dart';

class AppBarTop extends StatefulWidget {
  const AppBarTop({Key? key}) : super(key: key);

  @override
  State<AppBarTop> createState() => _AppBarTopState();
}

class _AppBarTopState extends State<AppBarTop> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[200],
      height: size.height * 0.32,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.32,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/2.jpeg'),
                  fit: BoxFit.cover
              ),
            ),
            child: Container(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 50,right: 50),
                height: 54,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 3)
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Searsh",
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    contentPadding: EdgeInsets.all(16),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              )
          ),
          Positioned(
              right: 0,
              left: 0,
              top: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Hi Hamza AlJork',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1.2
                    ),
                  ),
                  Text('Welcome To Access Your Information',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              )
          ),
          Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 50,right: 50),
                height: 54,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 3)
                      )
                    ],

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Searsh",
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    contentPadding: EdgeInsets.all(16),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}

