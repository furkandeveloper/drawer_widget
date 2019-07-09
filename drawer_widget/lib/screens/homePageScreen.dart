import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottom overflowed hatası için çözüm;
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          "Drawer Widget",
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page",textDirection: TextDirection.ltr,),
        ),
      ),
    );
  }
}
