import 'package:flutter/material.dart';
import 'main.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPage createState() => _UserPage();
}

class _UserPage extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Text(
                "User Page Content",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 30),
              child: Text(
                "Final_7_39_Peeranat",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Log Out",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Infomation"),
                        content: SingleChildScrollView(
                          child: Text("Do you want log out ?"),
                        ),
                        actions: [
                          ElevatedButton(
                            child: Text('Yes'),
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyHomePage()),
                              );
                            },
                          ),
                          ElevatedButton(
                            child: Text('No'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
