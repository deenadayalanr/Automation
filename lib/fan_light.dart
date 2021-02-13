import 'package:flutter/material.dart';
import 'package:custom_switch/custom_switch.dart';

class FanLight extends StatefulWidget {
  @override
  _FanLightState createState() => _FanLightState();
}

class _FanLightState extends State<FanLight> {
  Card status(String text, bool isToggle) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/light.png'),
          backgroundColor: Colors.white,
        ),
        title: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        trailing: CustomSwitch(
          value: isToggle,
          activeColor: Colors.blue,
          onChanged: (v) {
            print(v);
            setState(() {
              isToggle = v;
            });
          },
        ),
      ),
      elevation: 5,
    );
  }

  bool isToggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Stack(
        children: <Widget>[
          Container(
            // height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/new1.png')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(150.0, 50.0, 0.0, 50.0),
              child: Text(
                'LH-31',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.only(top: 180),
            children: <Widget>[
              status('LIGHT-1',isToggle),
              // Card(
              //   margin: EdgeInsets.symmetric(horizontal: 15.0),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20.0),
              //   ),
              //   child: ListTile(
              //     leading: CircleAvatar(
              //       backgroundImage: AssetImage('assets/images/light.png'),
              //       backgroundColor: Colors.white,
              //     ),
              //     title: Text(
              //       'LIGHT-1',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(fontWeight: FontWeight.w600),
              //     ),
              //     trailing: CustomSwitch(
              //       value: isToggle,
              //       activeColor: Colors.blue,
              //       onChanged: (v) {
              //         print(v);
              //         setState(() {
              //           isToggle = v;
              //         });
              //       },
              //     ),
              //   ),
              //   elevation: 5,
              // ),
            ],
          )
        ],
      ),
    );
  }
}
