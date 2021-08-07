import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.white30),
      child: Column(children: [
        Header(),
      ]),
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
      height: 100,
      width: width,
      decoration: new BoxDecoration(color: Colors.lightGreen),
      child: Row(
        children: [
          Text('Arjun'),
          Text('Arjun'),
          Text('Arjun'),
        ],
      ),
    );
  }
}
