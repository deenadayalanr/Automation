import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            _logo(),
            _emailusername(),
            _password(),
            _gender(),
            _phone(),
            _registerbutton(),
          ],
        ),
      ),
    );
  }
}

Widget _logo() {
  return Container(
      margin: EdgeInsets.only(top: 50),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/logo.png",
              height: 100,
              width: 100,
            ),
          ),
        ],
      ));
}

Widget _emailusername() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        new BoxShadow(
          color: Colors.grey,
          blurRadius:
              3.0, // You can set this blurRadius as per your requirement
        ),
      ],
    ),
    margin: EdgeInsets.only(top: 60),
    child: TextField(
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
      decoration: InputDecoration(
        hintText: "Email / Username",
        hintStyle: TextStyle(color: Color(0xffA6B0BD)),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.email, size: 20, color: Color(0xffA6B0BD)),
        prefixIconConstraints: BoxConstraints(
          minWidth: 75,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _password() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        new BoxShadow(
          color: Colors.grey,
          blurRadius:
              3.0, // You can set this blurRadius as per your requirement
        ),
      ],
    ),
    margin: EdgeInsets.only(top: 20),
    child: TextField(
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(color: Color(0xffA6B0BD)),
        fillColor: Colors.white,
        filled: true,
        prefixIcon:
            Icon(Icons.lock_outline, size: 20, color: Color(0xffA6B0BD)),
        prefixIconConstraints: BoxConstraints(
          minWidth: 75,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _gender() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        new BoxShadow(
          color: Colors.grey,
          blurRadius:
              3.0, // You can set this blurRadius as per your requirement
        ),
      ],
    ),
    margin: EdgeInsets.only(top: 20),
    child: TextField(
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
      decoration: InputDecoration(
        hintText: "Gender",
        hintStyle: TextStyle(color: Color(0xffA6B0BD)),
        fillColor: Colors.white,
        filled: true,
        prefixIcon:
            Icon(Icons.person_outline, size: 20, color: Color(0xffA6B0BD)),
        prefixIconConstraints: BoxConstraints(
          minWidth: 75,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _phone() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        new BoxShadow(
          color: Colors.grey,
          blurRadius:
              3.0, // You can set this blurRadius as per your requirement
        ),
      ],
    ),
    margin: EdgeInsets.only(top: 20),
    child: TextField(
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
      decoration: InputDecoration(
        hintText: "Phone",
        hintStyle: TextStyle(color: Color(0xffA6B0BD)),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.phone, size: 20, color: Color(0xffA6B0BD)),
        prefixIconConstraints: BoxConstraints(
          minWidth: 75,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _registerbutton() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(top: 30, bottom: 60),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Color(0xff8459f9), Color(0xff502BDF)]),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
    child: FlatButton(
      onPressed: () => {print('Register is pressed.')},
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "Register",
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget _signup() {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Text("Sign Up",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
  );
}
