import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
    MainScreen({Key key}) : super(key: key);

  	_MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  	@override
  	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				child: Text('Main screen'),
			),
		);
  	}
}