import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:book_tablez/pages/login_page.dart';
import 'package:book_tablez/pages/oeder_detail.dart';
import 'package:book_tablez/pages/profile_page.dart';
import 'package:book_tablez/pages/widgets/header_widget.dart';

class MyOrderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyOrderPageState();
  }
}

class _MyOrderPageState extends State<MyOrderPage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Order",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ])),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
            ),
            child: Stack(
              children: <Widget>[
                InkWell(
                  child: Icon(Icons.home),
                  // onTap: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                0.0,
                1.0
              ],
                  colors: [
                Theme.of(context).primaryColor.withOpacity(0),
                Theme.of(context).accentColor.withOpacity(0),
              ])),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).accentColor,
                    ],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Hi! Kavin",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'My profile',
                  style: TextStyle(
                      fontSize: 17, color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_rounded,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text(
                  'My order',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 100,
              child: HeaderWidget(100, false, Icons.house_rounded),
            ),
            Container(
              alignment: Alignment.center,
              // margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 90),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 25, left: 8, bottom: 4.0),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "My all orders",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 15, right: 66),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(width: 0),
                                // Container(
                                //   padding: const EdgeInsets.only(right: 5),
                                //   child: Text(
                                //     "#",
                                //     style: TextStyle(
                                //       color: Colors.black54,
                                //       fontWeight: FontWeight.w400,
                                //       fontSize: 16,
                                //     ),
                                //     textAlign: TextAlign.center,
                                //   ),
                                // ),
                                Container(
                                  // padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Order id",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  // padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Total",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Date",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //
                        InkWell(
                          child: Container(
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                width: 900,
                                height: 60,
                                // padding: EdgeInsets.all(15),
                                child: Column(
                                  children: <Widget>[
                                    Column(children: [
                                      Container(
                                        padding: const EdgeInsets.only(top: 18),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.shopping_bag_outlined,
                                              color: Colors.black54,
                                            ),
                                            Text(
                                              "#0034",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              "Rs.1350.00",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                            Text(
                                              "2021/12/31",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Icon(
                                              Icons.arrow_right_outlined,
                                              color: Colors.grey,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ])
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderDetailPage()));
                          },
                        ),
                        //
                        Container(
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: 900,
                              height: 60,
                              // padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Column(children: [
                                    Container(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            "#0034",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Rs.1350.00",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                          Text(
                                            "2021/12/31",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_right_outlined,
                                            color: Colors.grey,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ])
                                ],
                              ),
                            ),
                          ),
                        ),
                        //
                        Container(
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: 900,
                              height: 60,
                              // padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Column(children: [
                                    Container(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            "#0034",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Rs.1350.00",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                          Text(
                                            "2021/12/31",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_right_outlined,
                                            color: Colors.grey,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ])
                                ],
                              ),
                            ),
                          ),
                        ),
                        //
                        Container(
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: 900,
                              height: 60,
                              // padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Column(children: [
                                    Container(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            "#0034",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Rs.1350.00",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                          Text(
                                            "2021/12/31",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_right_outlined,
                                            color: Colors.grey,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ])
                                ],
                              ),
                            ),
                          ),
                        ),
                        //
                        Container(
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: 900,
                              height: 60,
                              // padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Column(children: [
                                    Container(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            "#0034",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Rs.1350.00",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                          Text(
                                            "2021/12/31",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_right_outlined,
                                            color: Colors.grey,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ])
                                ],
                              ),
                            ),
                          ),
                        ),
                        //
                        Container(
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: 900,
                              height: 60,
                              // padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Column(children: [
                                    Container(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.black54,
                                          ),
                                          Text(
                                            "#0034",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "Rs.1350.00",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                          Text(
                                            "2021/12/31",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_right_outlined,
                                            color: Colors.grey,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ])
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
