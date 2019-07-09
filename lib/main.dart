import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Typography Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TypePage(),
    );
  }
}

class TypePage extends StatelessWidget {
  final titleStyle = TextStyle(
    fontSize: 18,
    fontFeatures: [FontFeature.enable('smcp')],
    color: Colors.blueGrey[600],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Typography Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(flex: 5),
            Text(
              'regular numbers have their place:',
              style: titleStyle,
            ),
            Text(
              'The 1972 cup final was a 1-1 draw.',
              style: TextStyle(
                fontFamily: 'Cardo',
                fontSize: 24,
              ),
            ),
            Spacer(),
            Text(
              'but oldstyle figures blend well with lower case:',
              style: titleStyle,
            ),
            Text(
              'The 1972 cup final was a 1-1 draw.',
              style: TextStyle(
                fontFamily: 'Cardo',
                fontSize: 24,
                fontFeatures: [FontFeature.oldstyleFigures()],
              ),
            ),
            Spacer(),
            Divider(),
            Spacer(),
            Text(
              'fractions look better with a custom ligature:',
              style: titleStyle,
            ),
            Text(
              'Add 1/2 tsp of flour and stir.',
              style:
                  TextStyle(fontFamily: 'Milonga', fontSize: 24, fontFeatures: [
                FontFeature.enable('frac'),
              ]),
            ),
            Spacer(),
            Divider(),
            Spacer(),
            Text(
              'multiple stylistic sets in one font:',
              style: titleStyle,
            ),
            Text(
              'Raleway Dots',
              style: TextStyle(
                fontFamily: 'Raleway Dots',
                fontSize: 48,
              ),
            ),
            Text(
              'Raleway Dots',
              style: TextStyle(
                fontFeatures: [
                  FontFeature.stylisticSet(1),
                ],
                fontFamily: 'Raleway Dots',
                fontSize: 48,
              ),
            ),
            Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
