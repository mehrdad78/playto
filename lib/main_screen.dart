import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:playto_project/play_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double height = queryData.size.height;

    return Scaffold(
      appBar: GradientAppBar(
          title: Text("پلیتو"),
          gradient: LinearGradient(
              colors: [Color(0xffEE6E00), Color(0xffFF9234)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/main.jpg",
            fit: BoxFit.fitWidth,
          ),
          Center(
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlayScreen())),
              child: Image.asset(
                "images/icon.png",
                height: height * 0.3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
