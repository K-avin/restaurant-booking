import 'package:book_tablez/API/getTables.dart';
import 'package:book_tablez/Model/tablesModel.dart';
import 'package:book_tablez/pages/dishes_category.dart';
import 'package:book_tablez/pages/dishes_page.dart';
import 'package:book_tablez/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:book_tablez/pages/login_page.dart';
import 'package:book_tablez/pages/profile_page.dart';
import 'package:book_tablez/pages/widgets/header_widget.dart';

class TablePage extends StatefulWidget {
  int restaurantId;

  TablePage(this.restaurantId);
  @override
  State<StatefulWidget> createState() {
    return _TablePageState();
  }
}

class _TablePageState extends State<TablePage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  late Future<List<Tables>> tableList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tableList = getTables();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Book Table",
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
          child: Column(
            children: [
              Container(
                height: 100,
                child: HeaderWidget(100, false, Icons.house_rounded),
              ),
              GridView.count(
                shrinkWrap: true,
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 3,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(12, (index) {
                  return Center(
                    // child: Card(
                    //   elevation: 0,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(12),
                    //   ),
                    //   child: InkWell(
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(12),
                    //         // image: DecorationImage(
                    //         //   image: AssetImage(
                    //         //       "assets/images/resurant.png"),
                    //         //   // fit: BoxFit.fitWidth,
                    //         //   alignment:
                    //         //       Alignment.bottomCenter,
                    //         // ),
                    //       ),
                    //       alignment: Alignment.center,
                    //       width: 120,
                    //       height: 120,
                    //       padding:
                    //           const EdgeInsets.only(top: 10, right: 6, left: 6),
                    //       child: Column(
                    //         children: <Widget>[
                    //           Column(children: [
                    //             Container(
                    //               padding: const EdgeInsets.only(right: 30),
                    //               child: Row(
                    //                 mainAxisAlignment:
                    //                     MainAxisAlignment.spaceEvenly,
                    //                 children: [
                    //                   Container(
                    //                     alignment: Alignment.topLeft,
                    //                     child: Icon(
                    //                       Icons.group_rounded,
                    //                       color: Colors.black54,
                    //                       size: 25,
                    //                     ),
                    //                   ),
                    //                   Container(
                    //                     margin: const EdgeInsets.only(left: 19),
                    //                     child: Text(
                    //                       "T03",
                    //                       style: TextStyle(
                    //                         color: Colors.black54,
                    //                         fontWeight: FontWeight.w500,
                    //                         fontSize: 19,
                    //                       ),
                    //                       textAlign: TextAlign.right,
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //             Container(
                    //               alignment: Alignment.topLeft,
                    //               margin: const EdgeInsets.only(top: 8),
                    //               child: Text(
                    //                 "Reserved",
                    //                 style: TextStyle(
                    //                   color: Colors.red[300],
                    //                   fontWeight: FontWeight.w500,
                    //                   fontSize: 16,
                    //                 ),
                    //               ),
                    //             ),
                    //             Container(
                    //               alignment: Alignment.topLeft,
                    //               child: Text(
                    //                 "Table type: Small",
                    //                 style: TextStyle(
                    //                   color: Colors.black54,
                    //                   fontWeight: FontWeight.w400,
                    //                   fontSize: 10,
                    //                 ),
                    //               ),
                    //             ),
                    //             Container(
                    //               alignment: Alignment.topLeft,
                    //               margin: const EdgeInsets.only(top: 5),
                    //               child: Text(
                    //                 "Note: this is already reserved",
                    //                 style: TextStyle(
                    //                   color: Colors.black87,
                    //                   fontWeight: FontWeight.w400,
                    //                   fontSize: 12,
                    //                 ),
                    //               ),
                    //             ),
                    //           ])
                    //         ],
                    //       ),
                    //     ),
                    //     onTap: () {
                    //       showDialog(
                    //           context: context,
                    //           builder: (context) {
                    //             return AlertDialog(
                    //               title: Text('Table already reserved'),
                    //               content:
                    //                   Text('Please choose another table  ..'),
                    //               actions: <Widget>[
                    //                 // ignore: deprecated_member_use
                    //                 FlatButton(
                    //                     onPressed: () =>
                    //                         Navigator.of(context).pop(),
                    //                     child: Text('OK')),
                    //               ],
                    //             );
                    //           });
                    //     },
                    //   ),
                    // ),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //   image: AssetImage(
                            //       "assets/images/resurant.png"),
                            //   // fit: BoxFit.fitWidth,
                            //   alignment:
                            //       Alignment.bottomCenter,
                            // ),
                          ),
                          alignment: Alignment.center,
                          width: 120,
                          height: 120,
                          padding:
                              const EdgeInsets.only(top: 10, right: 6, left: 6),
                          child: Column(
                            children: <Widget>[
                              Column(children: [
                                Container(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Icon(
                                          Icons.group_rounded,
                                          color: Colors.black54,
                                          size: 25,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 19),
                                        child: Text(
                                          "T01",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    "2 People",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Table type: Medium",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Note: you can't book specific chairs",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ])
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DishesPage(3, 2, 2)));
                        },
                      ),
                    ),
                  );
                }),
              ),

//........................................................................................................
//.........................................................................................................
//........................................................................................................
//.........................................................................................................
//........................................................................................................
//.........................................................................................................
              // Container(
              //   child:
              //       Text('Restaurant ID' + widget.restaurantId.toString()),
              // ),
              // Container(
              //   height: 240,
              //   margin: EdgeInsets.only(top: 10, left: 8),
              //   child: FutureBuilder<List<Tables>>(
              //     future: tableList,
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //         List<Tables>? data = snapshot.data;
              //         return ListView.builder(
              //           scrollDirection: Axis.horizontal,
              //           itemCount: data!.length,
              //           itemBuilder: (BuildContext context, index) {
              //             // print(data[index].title);
              //             return Column(
              //               mainAxisAlignment:
              //                   MainAxisAlignment.spaceEvenly,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 GestureDetector(

              //                   onTap: () {
              //                     Navigator.push(
              //                       context,
              //                       MaterialPageRoute(
              //                           builder: (context) =>
              //                               DishesCategoryPage(
              //                                   widget.restaurantId,
              //                                   data[index].id)),
              //                     );
              //                   },
              //                   child: Container(
              //                     height: 200,
              //                     width: 130,
              //                     margin: EdgeInsets.only(right: 15),
              //                     child: Text(
              //                       data[index].type,
              //                       style: TextStyle(
              //                         color: Colors.black,
              //                         fontSize: 17,
              //                       ),
              //                       maxLines: 1,
              //                       overflow: TextOverflow.clip,
              //                     ),
              //                   ),
              //                 ),
              //                 Container(
              //                   width: 140,
              //                   child: Text(
              //                     data[index].chairs.toString(),
              //                     style: TextStyle(
              //                       color: Colors.black,
              //                       fontSize: 17,
              //                     ),
              //                     maxLines: 1,
              //                     overflow: TextOverflow.clip,
              //                   ),
              //                 )
              //               ],
              //             );
              //           },
              //         );
              //       } else if (snapshot.hasError) {
              //         print(snapshot.error);
              //       }

              //       // By default, show a loading spinner.
              //       return ListView.builder(
              //           scrollDirection: Axis.horizontal,
              //           itemCount: 6,
              //           itemBuilder: (context, index) {
              //             return Column(
              //               mainAxisAlignment:
              //                   MainAxisAlignment.spaceEvenly,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Container(
              //                   padding: EdgeInsets.symmetric(
              //                       horizontal: 50, vertical: 80),
              //                   height: 200,
              //                   child: CircularProgressIndicator(),
              //                   width: 130,
              //                   margin: EdgeInsets.only(right: 15),
              //                   decoration: BoxDecoration(
              //                     color: Colors.black45,
              //                     borderRadius: BorderRadius.circular(12),
              //                   ),
              //                 ),
              //               ],
              //             );
              //           });
              //     },
              //   ),
              // ),
            ],
          ),
        ));
  }
}
