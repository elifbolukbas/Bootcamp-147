import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());



}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => HomeScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('KANVER',
              style: Theme.of(context).textTheme.headline5),
          SizedBox(
            height: 20.0,
          ),
          FlutterLogo(
            size: 150,
          )
        ],
      ),


      //child:FlutterLogo(size:MediaQuery.of(context).size.height)   // uygulamanın logoyu ekleyelim
    );
  }
}
class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Hadi Başlayalım!")),
      body: new Container(
        padding: EdgeInsets.only(top: 48.0, left: 24.0, right: 24.0),
        child: new ListView(
          children: <Widget>[
            new Center(
              child: new Text(
                'KanVer uygulamamız ile kan ihtiyacı halinde, '
                    'ihtiyaç sahipleri ile kan bağışında bulunmak '
                    'isteyen insanların birbirlerine daha hızlı ulaşmasını '
                    'sağlayacağız. Bu sayede acil kan ihtiyacı durumunda daha '
                    'hızlı çözüme ulaşılacak.',
                style: new TextStyle(
                  fontSize: 22.00,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new SizedBox(height: 34.0,),
            new RaisedButton(
              color: Colors.lightBlue,
              child: new Text(
                'Kayıt ol',
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            )
          ],
        ),
      ),


      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {  },
      //   child: new Text("Hadi başlayalım!"),
      //   backgroundColor: Colors.blue,
      //   shape: BeveledRectangleBorder(),
      // ),
    );
  }
}
