import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_scanner/scanner.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {return SplashScreenState();
  }

}
class SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Scanner()
            )
        )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: buildScreen()
    );
  }

  Scaffold buildScreen() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(143, 148, 251, 1),
          /*image: DecorationImage(
              image:  AssetImage('assets/images/four2.png'),
              fit: BoxFit.cover),*/
        ),
        alignment: Alignment.center,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 2.0,),
            Padding(
              /*padding: const EdgeInsets.all(4.0),*/
              padding:const EdgeInsets.only(top: 350.0),
              child:Center(child: Text(
                "MonkilaTECH",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),),
            ),
          ],
        ),

      ),
    );
  }

}