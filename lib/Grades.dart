import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Grades extends StatefulWidget {

  @override
  _GradesState createState() => _GradesState();
}

class _GradesState extends State<Grades> {

  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;
  List<String> Grades = [
    'خوارزميات 1',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Results',
              style: TextStyle(
                  color: HexColor("#475071"),
                  fontWeight: FontWeight.bold
              ),
            ),
            Text('Academic Year',
              style: TextStyle(
                  color: HexColor("#475071"),
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        backgroundColor: HexColor("#E7E7F0"),
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            color: Colors.indigo[800],
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (int page) {
          setState(() {
            currentPage = page;
          });
        },
        children: <Widget>[
          Container(
            color: HexColor("#E7E7F0"),
            child: Center(
              child: Container(
                height: size.height/1.8,
                width: size.width/ 1 * 0.9,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: size.height/ 1.8 * 0.15,
                      color: Colors.white,
                      padding: EdgeInsets.only(left:30),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                              child: Text('المجموع \n (100)',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: HexColor("#475071"),
                                  fontSize: 14
                                ),
                              ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text('النظري \n (70)',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#475071"),
                                    fontSize: 14
                                ),
                              ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text('العملي \n (30)',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#475071"),
                                    fontSize: 14
                                ),
                              ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text('اسم المادة',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#475071"),
                                    fontSize: 14
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height/1.8 * 0.1214285714285,
                      color: HexColor("#D6D3E5"),
                    ),
                    Container(
                      height: size.height/1.8 * 0.1214285714285,
                      color: Colors.white,
                    ),
                    Container(
                      height: size.height/1.8 * 0.1214285714285,
                      color: HexColor("#D6D3E5"),
                    ),
                    Container(
                      height: size.height/1.8 * 0.1214285714285,
                      color: Colors.white,
                    ),
                    Container(
                      height: size.height/1.8 * 0.1214285714285,
                      color: HexColor("#D6D3E5"),
                    ),
                    Container(
                      height: size.height/1.8 * 0.1214285714285,
                      color: Colors.white,
                    ),
                    Container(
                      height: size.height/1.8 * 0.1214285714285,
                      color: HexColor("#D6D3E5"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: HexColor("#E7E7F0"),
            child: Center(
              child: Text(
                'Page 2',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          Container(
            color: HexColor("#E7E7F0"),
            child: Center(
              child: Text(
                'Page 3',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: HexColor("#E7E7F0"),
        child: Container(
          height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildPageIndicator(0),
              _buildPageIndicator(1),
              _buildPageIndicator(2),
            ],
          ),
        ),
        elevation: 0,
      ),
    );
  }

  Widget _buildPageIndicator(int index) {
    return GestureDetector(
      onTap: () {
        controller.animateToPage(
          index,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
      child: Container(
        height: 8.0,
        width: 8.0,
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentPage == index ? Colors.orange : Colors.grey[400],
        ),
      ),
    );
  }

}
