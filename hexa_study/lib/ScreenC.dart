import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');} ,
              child: Text('Go to ScreenA'),
              style: ElevatedButton.styleFrom(primary: Colors.red) ,
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/b');} ,
              child: Text('Go to ScreenB'),
              style: ElevatedButton.styleFrom(primary: Colors.red) ,
              )
          ],
        ),
      ),
    );
  }
}