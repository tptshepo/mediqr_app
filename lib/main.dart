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
        Positioned(
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
        )
      ]),
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

  Card buildDateCard() {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
        mainAxisSize: MainAxisSize.min,
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
        mainAxisSize: MainAxisSize.min,
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
        ],
      ),
    );
  }

  Card buildMedicinesCard() {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
                          child: Icon(
                        Icons.format_list_bulleted,
                        size: 18,
                        color: Color(0XFF2A70DD),
                      )),
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
                          child: Icon(
                        Icons.calendar_today,
                        size: 18,
                        color: Color(0xFF6F98DF),
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
      margin: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Color(0xFF3F78D6),
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
