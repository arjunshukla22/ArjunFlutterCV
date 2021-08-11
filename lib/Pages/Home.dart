import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> entries = <String>[
    'Approx. 5 years of experience in the area of software development for mobiles which includes understanding requirement specification, working on software',
    'Experienced of working on iOS platform and frameworks and customizing it as per requirements',
    'Having experience in Agile development methodology',
    'Experienced in UX Design, can translate concept design into user interface on mobiles like iPhone, iPad',
    'Expertise in using Design patterns and object oriented methodologies to design software for mobile phones',
    'Experienced with Apple Approval Distribution Process, AdHoc Enterprise distribution',
    'Involved in various parse level application and well aware of parsing of SOAP, XML and JSON formatted services for iPhone and iPad',
    'Worked on various architectures such as MVC, Singleton, Delegate and Notification patterns',
    'Experience taking a project from scoping requirements through actual launch of application',
    'Worked on Realm ability to write and troubleshoot SQLite Code and design managed Object context in Swift, Objective-C',
    'Worked on latest versions of iOS 13.0 and Xcode 12.0, well versed with latest changes in theindustry',
    'Having basic Knowledge of Dart programming language.'
  ];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [Header(), ExperienceSummary(entries: entries)],
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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text('Experience Summary',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'OpenSans',
                )),
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: entries.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.all(0.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.tune_rounded,
                        color: Colors.blue,
                        size: 10,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                          child: Text(entries[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'OpenSans',
                              ))),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
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
