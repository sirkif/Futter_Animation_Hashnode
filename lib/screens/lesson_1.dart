import 'package:flutter/material.dart';

class LessonOne extends StatefulWidget {
  const LessonOne({Key? key}) : super(key: key);

  @override
  _LessonOneState createState() => _LessonOneState();
}

class _LessonOneState extends State<LessonOne> {
  Color rectColor = Colors.green;
  double rectRadius = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: 140,
              height: 140,
              curve: Curves.easeIn,
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                color: rectColor,
                borderRadius: BorderRadius.circular(rectRadius),
              ),
            ),
            SizedBox(
              height: 140,
            ),
            ElevatedButton(
              child: const Text(
                'Animate the Box',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                primary: Colors.blueAccent,
              ),
              onPressed: () {
                setState(() {
                  rectRadius = rectRadius == 0 ? 50 : 0;
                });
                Future.delayed(const Duration(seconds: 1), () {
                  setState(() {
                    rectColor =
                        rectColor == Colors.green ? Colors.pink : Colors.green;
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
