import 'package:flutter/material.dart';

import 'animated_search_bar.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anim search bar Example',
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 60),
          child: AnimatedSearchBar(
            width: 400,
            textController: textController,
            onSuffixTap: () {
              setState(() {
                textController.clear();
              });
            },
            rtl: false,
            onSubmitted: (String value) {
              debugPrint("onSubmitted value: " + value);
            },
            textInputAction: TextInputAction.search,
            searchBarOpen: (a) {
              a = 0;
            },
          ),
        ),
      ),
    );
  }
}
