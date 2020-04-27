import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5) , (){
        Navigator.pushNamedAndRemoveUntil(context, '/home' , (r)=>false);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 180.0,
                height: 180.0,
                child: Image.asset("assets/splash_logo.png"),
              ),
              SizedBox(height: 10.0,),
              InkWell(
                child: new Text(
                    'ویب سایت',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "pt_sans_bold",
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 241, 90, 37)
                    ),
                ),
                onTap: () => launch("https://www.netrocode.com"),
              ),
              InkWell(
                child: new Text(
                  'یوتیوب',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 241, 90, 37),
                    fontWeight: FontWeight.bold,
                    fontFamily: "pt_sans_bold"
                  ),
                ),
                onTap: () => launch("https://www.youtube.com/channel/UCjIhL3lEM5Gpy1o9kkDXh_Q"),
              )
            ],
          )
      ),
    );
  }
}