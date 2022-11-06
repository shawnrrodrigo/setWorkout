import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  static const routeName = '/schedulescreen';

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List<String> days = [
    'Day 1',
    'Day 2',
    'Day 3',
    'Day 4',
    'Day 5',
    'Day 6',
    'Day 7'
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).buttonColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SET',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              'WORKOUT',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).backgroundColor,
                  fontSize: 18),
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[400],
                  radius: 50,
                ),
              ),
            ),
            Container(
              height: height * 0.8,
              child: Center(
                  child: ListView.builder(
                itemCount: days.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (ctx, i) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).buttonColor),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[400],
                            radius: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              days[i],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
