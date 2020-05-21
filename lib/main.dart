import 'package:doctorconsultation/secondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset('images/image1.png',
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill),
              SizedBox(height: 25),
              Text(
                "Choose The",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "Doctor You Want",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text("Lorem ipsum dolar sit amet, consectetur",
                  style: TextStyle(color: Color.fromARGB(0xff, 185, 185, 185))),
              Text("adipiscing elit, sed do eiusmod tempor",
                  style: TextStyle(color: Color.fromARGB(0xff, 185, 185, 185))),
              Text("elementum",
                  style: TextStyle(color: Color.fromARGB(0xff, 185, 185, 185))),
            ],
          ),
          Positioned(
              bottom: 0,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(0xff, 32, 28, 232),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 10),
                      Image.asset("images/chevrondoubleright.png",
                          height: 15, color: Colors.white)
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
