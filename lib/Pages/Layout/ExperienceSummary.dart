import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceSummary extends StatelessWidget {
  const ExperienceSummary({
    Key? key,
    required this.entries,
    required this.title,
  }) : super(key: key);

  final List<String> entries;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(title,
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
