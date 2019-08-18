import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    // ---------------------------------------TITLE SECTION
    Widget titleSection = Container(
      padding: const EdgeInsets.all(38),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Natural Musem Of History',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text('Kraków, PL')
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );

    // ---------------------------------------BTNS SECTION
    Column _buildBtnColumn(Color color, IconData icon, String label) {
      return Column(
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              label,
              style: TextStyle(color: color),
            ),
          )
        ],
      );
    }

    Widget btnRow = Container(
      padding: const EdgeInsets.all(48),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _buildBtnColumn(Colors.blue, Icons.call, 'TEST'),
        _buildBtnColumn(Colors.blue, Icons.accessible, 'TEST'),
        _buildBtnColumn(Colors.blue, Icons.add_alarm, 'TEST')
      ]),
    );

    Widget textSection = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.',
              textAlign: TextAlign.center,
              softWrap: true,
            )),
      ],
    );

    Widget imageSection = Image.asset(
      'images/lake.jpg',
      height: 200,
      fit: BoxFit.cover,
    );

    return MaterialApp(
      title: 'Layout tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: Text('APP'),
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView(
          children: [imageSection, titleSection, btnRow, textSection],
        ),
      ),
    );
  }
}
