import 'package:flutter/material.dart';

class BottomBarDocked extends StatefulWidget {
  const BottomBarDocked({super.key});

  @override
  State<BottomBarDocked> createState() => _BottomBarDockedState();
}

class _BottomBarDockedState extends State<BottomBarDocked> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 16, right: 16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      offset: Offset(1, 1)
                    )
                  ]
                ),
                child: Text('a'),
              )
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          height: 56, width: 56,
          child: FloatingActionButton(
            child: Icon(Icons.search),
            onPressed: () {}
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.blue,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column (
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      color: Colors.red,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        tooltip: 'Open navigation menu',
                        icon: const Icon(Icons.home),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('Home')
                    )
                  ]
                ),
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.note),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 60,
                ),
                // if ([FloatingActionButtonLocation.centerDocked].contains(FloatingActionButtonLocation.centerDocked)) const Spacer(),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}