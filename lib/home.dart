import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool DarkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkMode? Colors.grey.shade800: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: DarkMode?Colors.grey.shade800:Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color:DarkMode?Colors.grey.shade600: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: DarkMode? Colors.grey.shade900:Colors.grey.shade500,
                      offset: Offset(4, 4),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                  ]),
              child: Icon(
                Icons.apple,
                color: DarkMode?Colors.white:Colors.black,
                size: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        DarkMode = true;
                      });
                    },
                    height: 50,
                    minWidth: 100,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Dark',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        DarkMode = false;
                      });
                    },
                    child: Text('Light'),
                    height: 50,
                    minWidth: 100,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
