import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
  Future.delayed(
          const Duration(seconds: 3),
          () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LandingScreen()),
          ));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
            children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Image.asset('assets/images/logo.jpg'),
                ),
                Text(
              "Time o'clock",
                ),
                Text(
                'Loading...',
                style: Theme.of(context).textTheme.headline4,
                ),
          ],
        ),
      )
      )
    );
  }
}
