import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Roboto',
          primaryColor: Color(0xFF1258CD),
          accentColor: Color(0xFF2179E2),
          scaffoldBackgroundColor: Color(0xFF1258CD),
          textTheme: TextTheme(
              body1: TextStyle(
            color: Color(0xFFF1FFFF),
          ))),
      home: MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.title),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF2767D8),
                Color(0xFF2665D6),
                Color(0xFF1A42B2),
              ],
            ),
          ),
          child: buildBody(),
        ),
        // buildBottomBorder()
      ]),
    );
  }

  Positioned buildBottomBorder() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        // width: 100,
        height: 100,
        // margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE5E7E9),
              Color(0xFFEFF0F1),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
      ),
    );
  }

  SafeArea buildBody() {
    return SafeArea(
        child: Container(
      height: double.infinity,
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(children: <Widget>[
          buildTitleCard(),
          buildDateCard(),
          buildMedicinesCard(),
          buildExaminationsCard(),
        ]),
      ),
    ));
  }

  Widget buildExaminationRow() {
    return Container(
      width: 380,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      // elevation: 0,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              '11 Dec, 2017',
              style: TextStyle(
                color: Color(0xFF6d92af),
                fontSize: 14,
                // fontWeight: FontWeight.bold,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text(
              'Left Arm X-Ray',
              style: TextStyle(
                color: Color(0xFF415667),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Text(
              'SUMMARY',
              style: TextStyle(
                color: Color(0xFF0065db),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text(
              'Both Ulna and Radius bones fractured. Significant displacement diagnosed.',
              style: TextStyle(
                color: Color(0xFF22455b),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Text(
              'REPORTER',
              style: TextStyle(
                color: Color(0xFF0065db),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Row(
              children: <Widget>[
                ClipOval(
                  child: Container(
                    color: Color(0xFF4889E0),
                    height: 32.0, // height of the button
                    width: 32.0, // width of the button
                    child: Center(
                        child: Icon(
                      Icons.person,
                      size: 18,
                      color: Colors.white,
                    )),
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Dr Roman Kutepov',
                  style: TextStyle(
                    color: Color(0xFF22455b),
                    // fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFe8f2ff),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'See X-Ray',
                    style: TextStyle(
                        color: Color(0xFF1b6edc),
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    // size: 18,
                    color: Color(0xFF1b6edc),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Card buildDateCard() {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: ClipOval(
              child: Container(
                color: Color(0xFF4889E0),
                height: 40.0, // height of the button
                width: 40.0, // width of the button
                child: Center(
                    child: Icon(
                  Icons.calendar_today,
                  size: 18,
                  color: Colors.white,
                )),
              ),
            ),
            title: Text(
              '21 Nov, 2017',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              'Determination date',
              style: TextStyle(
                color: Color(0xFFB9DBFF),
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }

  Card buildTitleCard() {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text(
              'Osteoporosis',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                // fontWeight: FontWeight.bold,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              'Ongoing treatment',
              style: TextStyle(
                color: Color(0xFFB9DBFF),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }

  Card buildExaminationsCard() {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text(
              'Examinations',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              '6 total',
              style: TextStyle(
                color: Color(0xFFB9DBFF),
                fontSize: 15,
              ),
            ),
            trailing: Container(
              width: 120,
              height: 40,
              // margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0XFF3366CD),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'All time',
                      style: TextStyle(
                          fontSize: 17,
                          // fontWeight: FontWeight.bold,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      color: Color(0xFF3366CD),
                      height: 40.0, // height of the button
                      width: 40.0, // width of the button
                      child: Center(
                          child: Icon(
                        Icons.keyboard_arrow_down,
                        size: 32,
                        color: Colors.white,
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          buildExaminationRow(),
        ],
      ),
    );
  }

  Card buildMedicinesCard() {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text(
              'Medicines',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              '2 total',
              style: TextStyle(
                color: Color(0xFFB9DBFF),
                fontSize: 15,
              ),
            ),
            trailing: Container(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ClipOval(
                    child: Container(
                      color: Color(0xFFFFFFFF),
                      height: 40.0, // height of the button
                      width: 40.0, // width of the button
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.format_list_bulleted,
                            color: Color(0XFF2A70DD),
                            size: 18,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipOval(
                    child: Container(
                      // color: Color(0xFF4889E0),
                      height: 40.0, // height of the button
                      width: 40.0, // width of the button
                      child: Center(
                          child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_today,
                          size: 18,
                          color: Color(0xFF6F98DF),
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          buildMedicineRow(
              iconData: Icons.bookmark_border,
              title: 'Alendronate',
              subTitle: '100 mg'),
          buildMedicineRow(
              iconData: Icons.bookmark,
              title: 'Ibandronate',
              subTitle: '50 mg'),
        ],
      ),
    );
  }

  Container buildMedicineRow(
      {IconData iconData, String title, String subTitle}) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Color(0xFF3F78D6),
        elevation: 0,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                iconData,
                // size: 18,
                color: Colors.white,
              ),
              title: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    fontWeight: FontWeight.w600),
              ),
              trailing: Text(
                subTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
