import 'package:flutter/material.dart';

class profilescreen extends StatefulWidget {
  const profilescreen({super.key});

  @override
  State<profilescreen> createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset("assets/",fit: BoxFit.fill,),
            Center(
              child: Container(padding: EdgeInsets.all(20),
               ),
            )
          ],
        )),
    );
  }
}