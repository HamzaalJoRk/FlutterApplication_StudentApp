import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_project/AppBarTop.dart';
import 'package:test_project/Grades.dart';
class YearsPage extends StatelessWidget {
  const YearsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: YearsPage2(),
    );
  }
}

class YearsPage2 extends StatelessWidget {
  const YearsPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      Size size= MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: HexColor("#E7E7F0")
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          Padding(padding: EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Grades()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 6,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  padding: EdgeInsets.all(12),
                  minimumSize: Size(275, 65)
              ),
              child: Text(
                'First Year',
                style: TextStyle(
                  color: HexColor("#475071"),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Grades()),);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 6,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  padding: EdgeInsets.all(12),
                  minimumSize: Size(275, 65)
              ),
              child: Text(
                'Second Year',
                style: TextStyle(
                  color: HexColor("#475071"),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Grades()),);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 6,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  padding: EdgeInsets.all(12),
                  minimumSize: Size(275, 65)
              ),
              child: Text(
                'Third Year',
                style: TextStyle(
                  color: HexColor("#475071"),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Grades()),);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 6,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  padding: EdgeInsets.all(12),
                  minimumSize: Size(275, 65)
              ),
              child: Text(
                'Fourth Year',
                style: TextStyle(
                  color: HexColor("#475071"),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Grades()),);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 6,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  padding: EdgeInsets.all(12),
                  minimumSize: Size(275, 65)
              ),
              child: Text(
                'Fifth Year',
                style: TextStyle(
                  color: HexColor("#475071"),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Grades()),);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 6,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  padding: EdgeInsets.all(12),
                  minimumSize: Size(275, 65)
              ),
              child: Text(
                'All Years',
                style: TextStyle(
                  color: HexColor("#475071"),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}