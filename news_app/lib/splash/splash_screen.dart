import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    finishPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
              child: Icon(Icons.rocket_launch, size: 150, color: Colors.blue)),
          SizedBox(height: 12),
          Center(
              child: Text("News Apps",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }

  void finishPage() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        Navigator.of(context).pushNamedAndRemoveUntil("login", (r) => false);
      });
    });
  }
}
