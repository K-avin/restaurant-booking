import 'package:book_tablez/API/getCategory.dart';
import 'package:book_tablez/Model/categoryModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:book_tablez/pages/dishes_page.dart';
import 'package:book_tablez/pages/login_page.dart';
import 'package:book_tablez/pages/profile_page.dart';
import 'package:book_tablez/pages/widgets/header_widget.dart';

import 'home_page.dart';

class DishesCategoryPage extends StatefulWidget {
  // Category category;
  int restaurantId;
  int tableId;

  DishesCategoryPage(this.restaurantId, this.tableId);

  // DishesCategoryPage(this.category);
  @override
  State<StatefulWidget> createState() {
    return _DishesCategoryPageState();
  }
}

class _DishesCategoryPageState extends State<DishesCategoryPage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  late Future<List<Category>> categoryList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categoryList = getCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food Category",
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
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 90),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(10),
                  //   child: Column(
                  //     children: <Widget>[
                  //       Container(
                  //         decoration: BoxDecoration(
                  //           // color: Colors.white,
                  //           borderRadius: BorderRadius.circular(12),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.black12,
                  //               blurRadius: 30,
                  //               offset: const Offset(0, 0),
                  //             ),
                  //           ],
                  //         ),
                  //         child: Container(
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //             children: [
                  //               Column(
                  //                 children: [
                  //                   Container(
                  //                     child: Card(
                  //                       elevation: 0,
                  //                       shape: RoundedRectangleBorder(
                  //                         borderRadius:
                  //                             BorderRadius.circular(12),
                  //                       ),
                  //                       child: InkWell(
                  //                         child: Container(
                  //                           decoration: BoxDecoration(
                  //                             borderRadius:
                  //                                 BorderRadius.circular(12),
                  //                             image: DecorationImage(
                  //                               image: AssetImage(
                  //                                   "assets/images/category.png"),
                  //                               // fit: BoxFit.fitWidth,
                  //                               alignment: Alignment.topCenter,
                  //                             ),
                  //                           ),
                  //                           alignment: Alignment.center,
                  //                           width: 120,
                  //                           height: 120,
                  //                           padding: const EdgeInsets.only(
                  //                               top: 4, right: 6, left: 6),
                  //                           child: Column(
                  //                             children: <Widget>[
                  //                               Container(
                  //                                 margin: const EdgeInsets.only(
                  //                                     top: 83),
                  //                                 child: Text(
                  //                                   'Biriyani',
                  //                                   style: TextStyle(
                  //                                     color: Colors.black54,
                  //                                     fontWeight:
                  //                                         FontWeight.w400,
                  //                                     fontSize: 16,
                  //                                   ),
                  //                                   textAlign: TextAlign.center,
                  //                                 ),
                  //                               ),
                  //                             ],
                  //                           ),
                  //                         ),
                  //                         onTap: () {
                  //                           Navigator.push(
                  //                               context,
                  //                               MaterialPageRoute(
                  //                                   builder: (context) =>
                  //                                       DishesPage()));
                  //                         },
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               Column(
                  //                 children: [
                  //                   Container(
                  //                     child: Card(
                  //                       elevation: 0,
                  //                       shape: RoundedRectangleBorder(
                  //                         borderRadius:
                  //                             BorderRadius.circular(12),
                  //                       ),
                  //                       child: InkWell(
                  //                         child: Container(
                  //                           decoration: BoxDecoration(
                  //                             borderRadius:
                  //                                 BorderRadius.circular(12),
                  //                             image: DecorationImage(
                  //                               image: AssetImage(
                  //                                   "assets/images/category.png"),
                  //                               // fit: BoxFit.fitWidth,
                  //                               alignment: Alignment.topCenter,
                  //                             ),
                  //                           ),
                  //                           alignment: Alignment.center,
                  //                           width: 120,
                  //                           height: 120,
                  //                           padding: const EdgeInsets.only(
                  //                               top: 4, right: 6, left: 6),
                  //                           child: Column(
                  //                             children: <Widget>[
                  //                               Container(
                  //                                 margin: const EdgeInsets.only(
                  //                                     top: 83),
                  //                                 child: Text(
                  //                                   'Biriyani',
                  //                                   style: TextStyle(
                  //                                     color: Colors.black54,
                  //                                     fontWeight:
                  //                                         FontWeight.w400,
                  //                                     fontSize: 16,
                  //                                   ),
                  //                                   textAlign: TextAlign.center,
                  //                                 ),
                  //                               ),
                  //                             ],
                  //                           ),
                  //                         ),
                  //                         onTap: () {
                  //                           Navigator.push(
                  //                               context,
                  //                               MaterialPageRoute(
                  //                                   builder: (context) =>
                  //                                       DishesPage()));
                  //                         },
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               Column(
                  //                 children: [
                  //                   Container(
                  //                     child: Card(
                  //                       elevation: 0,
                  //                       shape: RoundedRectangleBorder(
                  //                         borderRadius:
                  //                             BorderRadius.circular(12),
                  //                       ),
                  //                       child: InkWell(
                  //                         child: Container(
                  //                           decoration: BoxDecoration(
                  //                             borderRadius:
                  //                                 BorderRadius.circular(12),
                  //                             image: DecorationImage(
                  //                               image: AssetImage(
                  //                                   "assets/images/category.png"),
                  //                               // fit: BoxFit.fitWidth,
                  //                               alignment: Alignment.topCenter,
                  //                             ),
                  //                           ),
                  //                           alignment: Alignment.center,
                  //                           width: 120,
                  //                           height: 120,
                  //                           padding: const EdgeInsets.only(
                  //                               top: 4, right: 6, left: 6),
                  //                           child: Column(
                  //                             children: <Widget>[
                  //                               Container(
                  //                                 margin: const EdgeInsets.only(
                  //                                     top: 83),
                  //                                 child: Text(
                  //                                   'Biriyani',
                  //                                   style: TextStyle(
                  //                                     color: Colors.black54,
                  //                                     fontWeight:
                  //                                         FontWeight.w400,
                  //                                     fontSize: 16,
                  //                                   ),
                  //                                   textAlign: TextAlign.center,
                  //                                 ),
                  //                               ),
                  //                             ],
                  //                           ),
                  //                         ),
                  //                         onTap: () {
                  //                           Navigator.push(
                  //                               context,
                  //                               MaterialPageRoute(
                  //                                   builder: (context) =>
                  //                                       DishesPage()));
                  //                         },
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                  Container(
                    child:
                        Text('Restaurant ID' + widget.restaurantId.toString()),
                  ),
                  Container(
                    child: Text('Table ID' + widget.tableId.toString()),
                  ),
                  Container(
                    height: 240,
                    margin: EdgeInsets.only(top: 10, left: 8),
                    child: FutureBuilder<List<Category>>(
                      future: categoryList,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<Category>? data = snapshot.data;
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: data!.length,
                            itemBuilder: (BuildContext context, index) {
                              // print(data[index].title);
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DishesPage(
                                                widget.restaurantId,
                                                widget.tableId,
                                                data[index].id)),
                                      );
                                    },
                                    child: Container(
                                      height: 200,
                                      width: 130,
                                      margin: EdgeInsets.only(right: 15),
                                      child: Text(
                                        data[index].title,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   width: 140,
                                  //   child: Text(
                                  //     data[index].chairs.toString(),
                                  //     style: TextStyle(
                                  //       color: Colors.black,
                                  //       fontSize: 17,
                                  //     ),
                                  //     maxLines: 1,
                                  //     overflow: TextOverflow.clip,
                                  //   ),
                                  // )
                                ],
                              );
                            },
                          );
                        } else if (snapshot.hasError) {
                          print(snapshot.error);
                        }

                        // By default, show a loading spinner.
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 50, vertical: 80),
                                    height: 200,
                                    child: CircularProgressIndicator(),
                                    width: 130,
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.black45,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                    ),
                  ),
                ],
              ),
            ),

            //........................................................................................................
//.........................................................................................................
//........................................................................................................
//.........................................................................................................
//........................................................................................................
//.........................................................................................................
          ],
        ),
      ),
    );
  }
}
