import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width);

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Layout"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height / 6,
              color: Colors.purple,
              child: Center(
                child: Text(
                  "Column 1",
                  style: TextStyle(
                    fontSize: size.height / 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: size.width / 2,
                  height: size.height / 6,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "Column 2, Row 1",
                      style: TextStyle(
                        fontSize: size.height / 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: size.width / 2,
                  height: size.height / 6,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      "Column 2, Row 2",
                      style: TextStyle(
                        fontSize: size.height / 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: size.width / 2,
                  height: size.height / 6,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      "Column 3, Row 1",
                      style: TextStyle(
                        fontSize: size.height / 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: size.width / 2,
                  height: size.height / 6,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Column 3, Row 2",
                      style: TextStyle(
                        fontSize: size.height / 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: size.width,
              height: size.height / 6,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  "Column 4",
                  style: TextStyle(
                    fontSize: size.height / 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
