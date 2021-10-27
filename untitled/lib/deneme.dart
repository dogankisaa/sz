import 'package:flutter/material.dart';

class Deneme extends StatefulWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  _DenemeState createState() => _DenemeState();
}

int num = 0;

class _DenemeState extends State<Deneme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projem"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    width: 150,
                    height: 150,
                  ),
                ),
                Expanded(
                   flex: 1,
                  child: Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
                ),
                Expanded(
                   flex:1,
                  child: Container(
                    color: Colors.blue,
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "$num",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 200,
            ),
            FloatingActionButton(
              onPressed: () {
                increase();
              },
              child: Center(
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  increase() {
    setState(() {
      num++;
    });
  }
}
