import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProductScreenState();
}

class ProductScreenState extends State<ProductScreen> {
  static const String routName ="/product";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Screen",textDirection: TextDirection.ltr,),
      ),
      body: Container(
        child: Center(
          child: Text("Product List",textDirection: TextDirection.ltr,),
        ),
      ),
    );
  }

}
