import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';

class FloorScreen extends StatefulWidget {
  @override
  _FloorScreenState createState() => _FloorScreenState();
}

class _FloorScreenState extends State<FloorScreen> {
  final databaseReference = FirebaseFirestore.instance;

  List floor_data = [];
  void initState() {
    getData();
  }

  void getData() async {
    DocumentSnapshot response =
        await databaseReference.collection('test').doc('Main Block').get();
    List<String> res = [];
    response.data().forEach((key, value) => res.add(key));
    // print(response.data());
    floor_data = res;
    setState(() {
      floor_data = res;
    });
    floor_data.sort();
  }

  // List floor_data = [
  //   "Ground Floor",
  //   "1st Floor",
  //   "2nd Floor",
  //   "3rd Floor",
  // ];

  @override
  Widget build(BuildContext context) {
    String args = ModalRoute.of(context).settings.arguments as String;
    var size = MediaQuery.of(context).size;
    print(floor_data);
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
                    '$args',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: size.height / 11,
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        ...floor_data.map((e) => _floors(e,args,context)),
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

Widget _floors(String floor_name,String args,BuildContext context) {
  return Container(
    height: 500,
    child: GestureDetector(
      onTap: () {
        print(args + floor_name);
         Navigator.pushNamed(context, '/class',arguments: [args,floor_name]);
      },
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
    ),
  );
}
