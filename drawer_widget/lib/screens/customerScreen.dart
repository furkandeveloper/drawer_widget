import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CustomerScreenState();
}

class CustomerScreenState extends State<CustomerScreen> {
  static const String routName ="/customer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Screen",textDirection: TextDirection.ltr,),
      ),
      body: Container(
        child: Center(
          child: Text("Customer List",textDirection: TextDirection.ltr,),
        ),
      ),
    );
  }
}
