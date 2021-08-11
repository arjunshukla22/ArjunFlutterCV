import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      // height: 100,
      width: width,
      decoration: new BoxDecoration(color: Colors.lightGreen),
      child: Column(
        children: [
          SizedBox(height: 10),
          Center(
              child: Container(
            width: 190.0,
            height: 190.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('arjun.png'),
            ),
          )),
          SizedBox(height: 10),
          Text('Arjun Shukla',
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                color: Colors.white, letterSpacing: 5,
                decoration: TextDecoration.none,
                // removes yellow line
              ))),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
