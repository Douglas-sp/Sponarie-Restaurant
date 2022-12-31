import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        
        // children: 
        //   [Align(
        //     alignment: Alignment.bottomRight,
        //     child: Text("Sponaire",
        // style: TextStyle(fontSize: 25,
        //  fontWeight: FontWeight.bold)),
        //   ),
        // ]
        ),
    );
  }
}