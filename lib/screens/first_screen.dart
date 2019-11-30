import 'package:flutter/material.dart';
import 'package:tempus/clock/clock.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class ClockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(Duration(seconds: 1), builder: (context) {
      String getSystemTime() {
        var now = new DateTime.now();
        return new DateFormat("H:m:s").format(now);
      }

      final String currentTime = getSystemTime();

      return Text(
        "$currentTime",
        style: TextStyle(
            color: Color(0xff2d386b),
            fontSize: 30,
            fontWeight: FontWeight.w700),
      );
    });
  }
}

class FirstTab extends StatelessWidget {
  static void addZone() {
    print("add zone");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 85,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Clock(),
        ),
        SizedBox(
          height: 85,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "TIME AT HOME",
                  style: TextStyle(
                      color: Color(0xffff0863),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.3),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 0.0
                  ),
                  child: new ClockWidget()),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "ADD TIMEZONE",
                  style: TextStyle(
                      color: Color(0xffff0863),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.3),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 100.0,
                  child: const RaisedButton(
                    onPressed: addZone,
                    color: Color(0xff2d386b),
                    shape: StadiumBorder(),
                    splashColor: Color(0xff1c2345),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
