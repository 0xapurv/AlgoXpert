import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';


class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    //set time to load the new page
    Future.delayed(Duration(milliseconds: 600), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xdd001529),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('assets/lottie/logo.json',width: 100),
                  Text("AlgoXpert",
                      style: GoogleFonts.abrilFatface(
                          fontSize: 40, color: Colors.pinkAccent)),
                ],
              ),
            ),
            SizedBox(
                height: 400,
                width: 400,
                child: Lottie.asset('assets/lottie/splash.json')),
            SizedBox(height: 20),
            // SizedBox(
            //     height: 200,
            //     width: 200,
            //     child: Lottie.asset('assets/lottie/loading.json')),
          ],
        ),
      ),
    );
  }
}