import 'package:flutter/material.dart';

class ClassRoom extends StatefulWidget {
  @override
  _ClassRoomState createState() => _ClassRoomState();
}

class _ClassRoomState extends State<ClassRoom> {
  
  List floor_data = [
    "LH-21",
    "LH-22",
    "LH-23",
    "LH-24",
    "LH-25",
    "LH-26",
    "LH-27",
    "LH-28",
    "LH-29",
    "LH-30",
    "LH-31",
    "LH-32"
  ];
  @override
  Widget build(BuildContext context) {
    List args = ModalRoute.of(context).settings.arguments as List;
    print(args);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/new1.png')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    args[0],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Colors.white),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 3,
                      children: <Widget>[
                        ...floor_data.map((e) => _floors(e)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _floors(String floor_name) {
  return Container(
    height: 500,
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Center(
        child: Text(
          floor_name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    ),
  );
}
