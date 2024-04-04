import 'package:flutter/material.dart';
import 'AdminPage.dart';
import 'UserPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  TextEditingController UsernameController = new TextEditingController();
  TextEditingController PasswordController = new TextEditingController();

  var Admin_Username = "admin";
  var Admin_Password = "passwd";
  var User_Username = "peeranat";
  var User_Password = "43109";

  void CheckLogin() {
    setState(() {
      if (UsernameController.text == Admin_Username && PasswordController.text == Admin_Password) {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Infomation"),
              content: SingleChildScrollView(
                child: Text("Welcome Admin"),
              ),
              actions: [
                ElevatedButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdminPage()),
                    );
                  },
                ),
              ],
            );
          },
        );
      } else if (UsernameController.text == User_Username && PasswordController.text == User_Password) {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Infomation"),
              content: SingleChildScrollView(
                child: Text("Welcome User"),
              ),
              actions: [
                ElevatedButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserPage()),
                    );
                  },
                ),
              ],
            );
          },
        );
        /* =================================================


        ---------------- GO TO USER PAGE ----------------

        
        ================================================= */

      } else {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("“Error”"),
              content: SingleChildScrollView(
                child: Text("Username or Password is incorrect"),
              ),
              actions: [
                ElevatedButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Final_7_40_Peeranat"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Text(
                "My Application",
                style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: TextField(
                controller: UsernameController,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: TextField(
                controller: PasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                onPressed: () {
                  CheckLogin();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
