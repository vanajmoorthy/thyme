import 'package:flutter/material.dart';
import 'screens/first_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tempus',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new AppClock(),
    );
  }
}

class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 600,
      width: double.infinity,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(55),
              child: Container(
                color: Colors.transparent,
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      TabBar(
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                                color: Color(0xffff0863),
                                width: 4.0
                            ),
                        ),
                        indicatorWeight: 15,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Color(0xff2d386b),
                        labelStyle: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1.3,
                            fontWeight: FontWeight.w500),
                        unselectedLabelColor: Colors.black26,
                        tabs: [
                          Tab(
                            text: "ZONES",
                            icon: Icon(Icons.watch_later, size: 40),
                          ),
                          Tab(
                            text: "ALARMS",
                            icon: Icon(Icons.watch_later, size: 40),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: FirstTab(),),
              Text("data2"),
            ],
          ),
        ),
      ),
    );
  }
}
