import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C',
    'A',
    'B',
    'C'
  ];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Header(),
          ListView(shrinkWrap: true, physics: ScrollPhysics(), children: [
            Expanded(
              child: ListTile(
                // leading: FlutterLogo(),
                title: Text('These ListTiles are expanded '),
              ),
            ),
          ])

          // ExperienceSummary(entries: entries)
        ],
      ),
    ));
  }
}

class ExperienceSummary extends StatelessWidget {
  const ExperienceSummary({
    Key? key,
    required this.entries,
  }) : super(key: key);

  final List<String> entries;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: new ListView.builder(
          // shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: entries.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return new Text(entries[index]);
          },
        ),
      ),
    );
  }
}

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
          Text('Your text',
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                color: Colors.blue, letterSpacing: 10,
                decoration: TextDecoration.none,
                // removes yellow line
              ))),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
