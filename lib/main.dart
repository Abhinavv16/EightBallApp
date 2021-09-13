import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int askmeimage = 1;
  void imagechange() {
    print('Button Pressed= $askmeimage');
    askmeimage = Random().nextInt(4) + 1;
    print('$askmeimage');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              backgroundColor: Colors.blue.shade900,
              title: Text('Ask Me Anything'),
            ),
            body: Center(
              child: Container(
                  child: TextButton(
                onPressed: () {
                  setState(() {
                    imagechange();
                  });
                },
                child: Image.asset('images/ball$askmeimage.png'),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
