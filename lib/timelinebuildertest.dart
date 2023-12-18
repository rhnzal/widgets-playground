import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:timelines/timelines.dart';

class TimelineBuilderTest extends StatefulWidget {
  const TimelineBuilderTest({super.key});

  @override
  State<TimelineBuilderTest> createState() => _TimelineBuilderTestState();
}

class _TimelineBuilderTestState extends State<TimelineBuilderTest> {

  List data = [
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test Iya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya testIya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
    {
      'title' : 'Rabu, 25 Januari 2023',
      'body' : 'Iya test'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Timeline.builder(
          theme: TimelineThemeData(
            nodePosition: 0,
            indicatorPosition: 0,
            color: Colors.grey,
            connectorTheme: const ConnectorThemeData(
              // space: 30,
              color: Colors.grey
            )
          ),
          itemBuilder: (context, index) {
            return customTimeline(
              color: index  == 0 ? const Color.fromARGB(255, 0, 111, 175) : null,
              isLast: index == data.length -1 , 
              title: data[index]['title'], 
              body: data[index]['body']
            );
          }, 
          itemCount: data.length
        ),
      ),
    );
  }

  TimelineTile customTimeline({
    Color? color, 
    required bool isLast,
    required String title,
    required String body
  }) {
    return TimelineTile(
      contents: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( 
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text( 
                body,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF85878B)
                ),
              ),
            )
          ],
        ),
      ),
      node: TimelineNode(
        indicator: Indicator.dot(
          color: color,
          // size: 20,
        ),
        endConnector: color != null ? Connector.dashedLine(color: color) : isLast ? null : Connector.solidLine(),
      )
    );
  }
}