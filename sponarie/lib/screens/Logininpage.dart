import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 65.0,left: 100.0,),
              child: Row(
                children: [
                  Text("Sponarie",
                  style: TextStyle(color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  //fontFamily:"Hindi",
                  )
                  ,)
                ],              
            ),              
            ),

            Padding(
              padding: EdgeInsets.only(left: 125.0,),
              child: Row(
                children: [
                  Text("Restaurant",
                  style: TextStyle(color: Color.fromARGB(255, 8, 132, 234),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  //fontFamily:"Hindi",
                  )
                  ,)
                ],              
            ),              
            )

            


            
          ],
        )),

    );
  }
}