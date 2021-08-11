import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'Layout/Header.dart';
import 'Layout/ExperienceSummary.dart';
import 'Layout/ProfessionalExperience.dart';
import 'package:arjuncv/Model/Project.dart';

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

  final projects = Project.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Header(),
          // ProfessionExperience(),
          // ExperienceSummary(entries: entries, title: 'Experience Summary'),
          ProjectDescription(data: projects)
        ],
      ),
    ));
  }
}

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<Project> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: data.length,
      itemBuilder: (BuildContext ctxt, int index) {
        return Container(
          child: Text(data[index].title,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'OpenSans',
              )),
        );
      },
    );
  }
}
