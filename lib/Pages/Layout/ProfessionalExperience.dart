import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfessionExperience extends StatelessWidget {
  const ProfessionExperience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text('Professional Experience',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'OpenSans',
                )),
          ),
          SizedBox(height: 10),
          ExperienceTile(
              companyName:
                  'PrepLadder Pvt. Ltd, IT-Park, Chandigarh INDIA',
              duration: 'July 2019 – Present'),
          ExperienceTile(
              companyName:
                  'Xportsoft Technology , Ambala Cantt, Haryana, INDIA',
              duration: 'Oct 2016 – June 2019'),
          ExperienceTile(
              companyName:
                  'GrayCell Technology Pvt. Ltd., Chandigarh, INDIA',
              duration: 'Mar 2016 – Sept 2016')
        ],
      ),
    );
  }
}

class ExperienceTile extends StatelessWidget {
  const ExperienceTile({
    Key? key,
    required this.companyName,
    required this.duration,
  }) : super(key: key);

  final String companyName;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(companyName,
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w500)),
      subtitle: Text(duration,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 10,
              fontFamily: 'OpenSans',
              fontStyle: FontStyle.italic)),
    );
  }
}
