import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenB'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {                
                Navigator.pushNamed(context, '/');
              } ,
              child: Text('Go to ScreenA'),
              style: ElevatedButton.styleFrom(primary: Colors.red) ,
              ),
            ElevatedButton(
              onPressed: () {                
                Navigator.pushNamed(context, '/c');
              } ,
              child: Text('Go to ScreenC'),
              style: ElevatedButton.styleFrom(primary: Colors.red) ,
              )
          ],
        ),
      ),
    );
  }
}