import 'package:book_tablez/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:book_tablez/pages/login_page.dart';
import 'package:book_tablez/pages/profile_page.dart';
import 'package:book_tablez/pages/tables_page.dart';
import 'package:book_tablez/pages/widgets/header_widget.dart';

class RestaurantPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RestaurantPageState();
  }
}

class _RestaurantPageState extends State<RestaurantPage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Restaurant",
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
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
              // ListTile(
              //   leading: Icon(Icons.person_add_alt_1,
              //       size: _drawerIconSize,
              //       color: Theme.of(context).accentColor),
              //   title: Text(
              //     'Registration Page',
              //     style: TextStyle(
              //         fontSize: _drawerFontSize,
              //         color: Theme.of(context).accentColor),
              //   ),
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => RegistrationPage()),
              //     );
              //   },
              // ),
              // Divider(
              //   color: Theme.of(context).primaryColor,
              //   height: 1,
              // ),
              // ListTile(
              //   leading: Icon(
              //     Icons.password_rounded,
              //     size: _drawerIconSize,
              //     color: Theme.of(context).accentColor,
              //   ),
              //   title: Text(
              //     'Forgot Password Page',
              //     style: TextStyle(
              //         fontSize: _drawerFontSize,
              //         color: Theme.of(context).accentColor),
              //   ),
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => ForgotPasswordPage()),
              //     );
              //   },
              // ),
              // Divider(
              //   color: Theme.of(context).primaryColor,
              //   height: 1,
              // ),
              // ListTile(
              //   leading: Icon(
              //     Icons.verified_user_sharp,
              //     size: _drawerIconSize,
              //     color: Theme.of(context).accentColor,
              //   ),
              //   title: Text(
              //     'Verification Page',
              //     style: TextStyle(
              //         fontSize: _drawerFontSize,
              //         color: Theme.of(context).accentColor),
              //   ),
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => ForgotPasswordVerificationPage()),
              //     );
              //   },
              // ),
              // Divider(
              //   color: Theme.of(context).primaryColor,
              //   height: 1,
              // ),
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
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 30,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: InkWell(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/resurant.png"),
                                                // fit: BoxFit.fitWidth,
                                                alignment:
                                                    Alignment.bottomCenter,
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            width: 150,
                                            height: 150,
                                            padding: EdgeInsets.all(15),
                                            child: Column(
                                              children: [
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  // padding: const EdgeInsets.only(
                                                  //     top: 26,
                                                  //     left: 158,
                                                  //     bottom: 4.0),
                                                  child: Text(
                                                    "Rosaro",
                                                    style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 19,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  // padding: const EdgeInsets.only(
                                                  //     left: 158),
                                                  child: Text(
                                                    "Vavuniya",
                                                    style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        TablePage()));
                                          },
                                        ),
                                      ),
                                    ),
                                    //
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: InkWell(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/resurant.png"),
                                                // fit: BoxFit.fitWidth,
                                                alignment:
                                                    Alignment.bottomCenter,
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            width: 150,
                                            height: 150,
                                            padding: EdgeInsets.all(15),
                                            child: Column(
                                              children: [
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  // padding: const EdgeInsets.only(
                                                  //     top: 26,
                                                  //     left: 158,
                                                  //     bottom: 4.0),
                                                  child: Text(
                                                    "Rosaro",
                                                    style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 19,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  // padding: const EdgeInsets.only(
                                                  //     left: 158),
                                                  child: Text(
                                                    "Vavuniya",
                                                    style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        TablePage()));
                                          },
                                        ),
                                      ),
                                    ),
                                    //
                                  ],
                                ),
                              ],
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
