import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class HorizontalTimeline extends StatefulWidget {
  const HorizontalTimeline({super.key});

  @override
  State<HorizontalTimeline> createState() => _HorizontalTimelineState();
}

class _HorizontalTimelineState extends State<HorizontalTimeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Timeline'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Flexible(
            child: Timeline.tileBuilder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              builder: TimelineTileBuilder.connected(
                itemCount: 2,
                itemExtent: MediaQuery.of(context).size.width/2,
                connectionDirection: ConnectionDirection.before,
                contentsAlign: ContentsAlign.reverse,
                firstConnectorBuilder: (context) => Connector.solidLine(color: Colors.black,),
                connectorBuilder: (context, index, type) => Connector.dashedLine(color: Colors.black),
                lastConnectorBuilder: (context) => Connector.dashedLine(color: Colors.black), // opt
                indicatorBuilder: (context, index) {
                  if (index == 0) {
                    return Indicator.widget(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                        ),
                        width: 32,
                        height: 32,
                        padding: EdgeInsets.all(6),
                        child: Icon(Icons.check, color: Colors.white, size: 18)
                      ),
                    );
                  } else {
                    return Indicator.widget(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                        ),
                        width: 32,
                        height: 32,
                        padding: EdgeInsets.all(6),
                        child: CircularProgressIndicator(
                          strokeWidth: 1,
                          color: Colors.white,
                        )
                      ),
                    );
                  }
                },
                contentsBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      width: 59,
                      height: 35,
                      margin: const EdgeInsets.only(bottom: 6),
                      child: Image.asset('assets/images/tangki.png')
                    );
                  }
                },
                oppositeContentsBuilder: (context, index) => index == 0 ? Text('Menuju mata air') : null,
              )
            ),
          ),
          Text('Menuju mata air')
        ],
      )
    );
  }
}




// TimelineNode(
//             startConnector: Connector.solidLine(),
//             indicator: Indicator.widget(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   shape: BoxShape.circle
//                 ),
//                 width: 32,
//                 height: 32,
//                 padding: EdgeInsets.all(6),
//                 // child: CircularProgressIndicator(
//                 //   strokeWidth: 1,
//                 //   color: Colors.white,
//                 // )
//               ),
//             ),
//           )

// child: FixedTimeline.tileBuilder(
//           direction: Axis.horizontal,
//           builder: TimelineTileBuilder.connectedFromStyle(
//             itemCount: 5,
//             itemExtent: 80,
//             lastConnectorStyle: ConnectorStyle.transparent,
//             connectionDirection: ConnectionDirection.before,
//             connectorStyleBuilder: (context, index) {
//               return (index > 0) ? ConnectorStyle.dashedLine : ConnectorStyle.solidLine;
//             },
//             indicatorStyleBuilder: (context, index) {
//               return IndicatorStyle.dot;
//             },
//           )
//         )