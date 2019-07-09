import 'package:drawer_widget/screens/customerScreen.dart';
import 'package:drawer_widget/screens/productScreen.dart';
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
          child: Text(
            "Home Page",
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
      drawer: buildDrawer(context),
    );
  }

  Drawer createMenuItems(BuildContext context) {
    createNavigationItem(var icon, String page, String routName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(
          page,
          textDirection: TextDirection.ltr,
        ),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routName);
          });
        },
      );
    }

    var navigationList = [
      createNavigationItem(
          Icons.account_box, "Customers", CustomerScreenState.routName),
      createNavigationItem(Icons.shop, "Products", ProductScreenState.routName),
      createNavigationItem(Icons.home, "Home", "/"),
    ];

    ListView menuItems = new ListView(
      children: navigationList,
    );
    return Drawer(child: menuItems,);
  }

  buildDrawer(BuildContext context) {
    return Drawer(
      child: createMenuItems(context),
    );
  }
}
