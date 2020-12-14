import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SecondRoute());
}



class SecondRoute extends StatelessWidget {

  // void showToast() {
  //   Fluttertoast.showToast(
  //       msg: 'This is toast notification',
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.BOTTOM,
  //       timeInSecForIos: 1,
  //       backgroundColor: Colors.red,
  //       textColor: Colors.yellow
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
            children: <Widget>[
        Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'User Name',
            hintText: 'Enter User Name',
          ),
        ),
      ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.lightGreen,
                child: Text('Sign In'),
                onPressed: (){},
              )
            ]
    )
      )


      //
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: Text('Go back!'),
      //   ),
      // ),
    );
  }
}