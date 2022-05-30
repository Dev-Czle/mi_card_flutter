import 'package:flutter/material.dart';

// https://docs.flutter.dev/development/ui/widgets/layout

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/test.png'),
              ),
              Text(
                'Gi-Deok',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jua',
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              MyTestContainer(
                iconData: Icons.phone,
                data: '01044485575',
              ),
              MyTestContainer(
                iconData: Icons.email,
                data: 'czle22@gmail.com',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget MyTestContainer(
    {@required IconData iconData,
    @required String data,
    MaterialColor iconColor = Colors.teal}) {
  return Card(
    color: Colors.white,
    margin: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 25.0,
    ),
    child: ListTile(
      leading: Icon(
        iconData,
        color: iconColor,
      ),
      title: Text(
        data,
        style: TextStyle(
          color: Colors.teal.shade900,
          fontFamily: 'SourceSansPro',
          fontSize: 20.0,
        ),
      ),
    ),
  );
}
