import 'package:flutter/material.dart';
import 'Screen3.dart';
import 'CustomWidget.dart'; // Import the custom widget

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome to Screen 2'),
            CustomWidget(), // Use the custom widget
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        Screen3(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      var begin = Offset(0.0, 1.0);
                      var end = Offset.zero;

                      // Use AnimatedBuilder to implicitly animate the position
                      return AnimatedBuilder(
                        animation: animation,
                        builder: (context, child) {
                          var offset = AlignmentTween(
                            begin: Alignment(0.0, 1.0),
                            end: Alignment(0.0, 0.0),
                          ).evaluate(animation);

                          return Transform.translate(
                            offset: Offset(offset.x, offset.y),
                            child: child,
                          );
                        },
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Text('Go to Screen 3 with Implicit Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
