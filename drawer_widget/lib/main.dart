import 'package:drawer_widget/screens/customerScreen.dart';
import 'package:drawer_widget/screens/homePageScreen.dart';
import 'package:drawer_widget/screens/productScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
  //0538 393 22 11
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageScreen(),
      routes: <String,WidgetBuilder>{
        CustomerScreenState.routName:(BuildContext context)=>CustomerScreen(),
        ProductScreenState.routName:(BuildContext context)=>ProductScreen(),
      },
    );
  }

}
