import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Annica's Flutter app"),
          elevation: 10,
          backgroundColor: Colors.pink
        ),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            
            SizedBox(height: 20),
            
            Text (
              "Login",
              style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent
              )
            ),
            
            SizedBox(height: 20),
            
            TextField(
              decoration: InputDecoration(
                labelText: "Username"
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password"
              )
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                print("click");
              },
              child: Text("Log in")
            )
          ]
          
        )
      )
    );
  }
}

