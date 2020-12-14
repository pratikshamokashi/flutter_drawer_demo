import 'package:flutter/material.dart';
import 'package:flutter_drawer_demo/ContactUs.dart';

import 'SecondRoute.dart';
import 'Setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
          primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Drawer Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget{
  MyHomePage({Key key,this.title}):super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(this.title)
    ),
      body: Center(
        child: Text('Home page',
        style: TextStyle(fontSize: 20.0),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text("Pratiksha M"),
                                    accountEmail: Text("pratiksha@gmail.com"),
                currentAccountPicture: CircleAvatar(
                              backgroundColor: Colors.amber,
                              child: Text("Sona",
                              style: TextStyle(fontSize: 15,),
                              ),
                )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                // Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings), title: Text("Settings"),
              onTap: () {
                // Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts), title: Text("Contact Us"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs()),);
                // Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

