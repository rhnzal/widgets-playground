// import 'package:flutter/material.dart';
import 'package:flutter_playground/bottombar_docked.dart';
import 'package:flutter_playground/column_debug.dart';
import 'package:flutter_playground/timelinebuildertest.dart';
import 'package:flutter_playground/horizontal_timeline.dart';
import 'package:flutter_playground/widget_test_screen.dart';
import 'package:timelines/timelines.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context, 
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return ColumnPage();
            //         },
            //       )
//                 );
//               }, 
//               child: Text('Column')
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main () {
  runApp(const APP());
}

class APP extends StatelessWidget {
  const APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android : CupertinoPageTransitionsBuilder()
          }
        )
      ),
      home: HorizontalTimeline(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color primary = const Color.fromARGB(255, 0, 111, 175);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, 
            MaterialPageRoute(
              builder: (context) {
                // return const TimelineBuilderTest();
                return const WidgetTestScreen();
              },
            )
          );
        }
      ),
      appBar: AppBar(
        title: const Text('Demo App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: IgnorePointer(
          child: Timeline(
            theme: TimelineThemeData(
              nodePosition: 0,
              indicatorPosition: 0,
              color: Colors.grey,
              connectorTheme: const ConnectorThemeData(
                // space: 30,
                color: Colors.grey
              )
            ),
            children: [
              customTimeline(
                color: primary,
                isLast: false, 
                title: 'Rabu, 25 Januari 2023', 
                body: 'Paket dalam perjalanan ke tujuan wakwaw depan muka lorem ipsum wawawawawawaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
              ),
              customTimeline(
                isLast: false,
                title: 'Selasa, 24 Januari 2023',
                body: 'OTW'
              ),
              customTimeline(
                isLast: true, 
                title: 'Selasa, 24 Januari 2023', 
                body: 'Paket diterima kurir'
              )
            ],
          ),
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