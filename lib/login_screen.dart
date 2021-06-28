import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: WaveClipperTwo(flip: true),
            child: Container(
              height: 300,
              color: Colors.teal,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Smartly',
                  style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  'Welcome back!',
                  style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Email Address",
                  fillColor: Colors.grey,
                  hintText: "Enter your Email Address",
                  hintStyle: GoogleFonts.mulish(fontSize: 12),
                  hoverColor: Colors.teal),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  fillColor: Colors.grey,
                  hintText: "Enter your Password",
                  hintStyle: GoogleFonts.mulish(fontSize: 12),
                  hoverColor: Colors.teal),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: 200,
                height: 50,
                child: ElevatedButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: GoogleFonts.mulish(
                          textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
