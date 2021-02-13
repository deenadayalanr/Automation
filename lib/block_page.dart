import 'package:flutter/material.dart';

class BlockPage extends StatefulWidget {
  @override
  _BlockPageState createState() => _BlockPageState();
}

class _BlockPageState extends State<BlockPage> {
  Center block(String text, BuildContext context, Image photo) {
    final height = MediaQuery.of(context).size;
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Container(
          height: height.height / 3,
          width: height.width / 1.2,
          child: Column(
            children: [
              SizedBox(
                height: 5.0,
              ),
              Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 55.0,
                child: Divider(
                  color: Colors.orange,
                  thickness: 2,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: GestureDetector(
                  child: photo,
                  onTap: () {
                    Navigator.pushNamed(context, '/floor', arguments: text);
                    print('$text is pressed');
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width as double;
    print(width);
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/new1.png'),
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/logo.png",
                height: 60,
                width: 60,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60.0, 70.0, 0.0, 50.0),
              child: Text(
                'Smart Building Automation',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 5,
                ),
                block(
                  'Main Block',
                  context,
                  Image.asset('assets/images/main.jpeg'),
                ),
                SizedBox(
                  height: 30.0,
                ),
                block(
                  'Academic Block',
                  context,
                  Image.asset('assets/images/academic.jpeg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Scaffold(
//          backgroundColor: Color(0xffF5F5F5),
//         appBar: AppBar(
//           backgroundColor: Colors.deepOrangeAccent[200],
//           centerTitle: true,
//           title: Text(
//             'Smart Building Automation',
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.white),
//           ),
//         ),
//   body: Column(
//     children: [
//       SizedBox(
//         height: 30.0,
//       ),
//       block('Main Block', context, Image.asset('assets/images/main.jpeg'), ),
//       SizedBox(
//         height: 30.0,
//       ),
//       block('Academic Block', context, Image.asset('assets/images/academic.jpeg'),),
//     ],
//   ),
// ),
