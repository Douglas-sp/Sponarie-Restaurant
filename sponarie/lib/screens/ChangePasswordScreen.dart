import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sponarie/screens/Logininpage.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: [
        //---header begin--
        Padding(
          padding: EdgeInsets.only(top: 65.0, left: 100.0,),
          child: Row(
            children: [
              Text(
                "Sponarie",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  //fontFamily:"Hindi",
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 125.0,
          ),
          child: Row(
            children: [
              Text(
                "Restaurant",
                style: TextStyle(
                  color: Color.fromARGB(255, 8, 132, 234),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  //fontFamily:"Hindi",
                ),
              )
            ],
          ),//---header end--,
        ),
        
        SizedBox(height: 100,),

        
       Container(
            padding: EdgeInsets.all(30), 
            margin: EdgeInsets.all(30), 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20.0,
                  spreadRadius: 0.2,
                )
              ]
            ),

            child: Column(
              children: [

                  Text('Change Password', 
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),

                  SizedBox(height: 40,), 

                  FormBuilderTextField(
                    name: 'password',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0))
                      ),
                      //label:Text('name@example.com'),
                      hintText: 'Enter your current password'
                    ),
                    ),

                  SizedBox(height: 20,), 

                  FormBuilderTextField(
                    name: 'password',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0))
                      ),
                      //label:Text('name@example.com'),
                      hintText: 'New password'
                    ),
                    ),

                  SizedBox(height: 20,), 

                  FormBuilderTextField(
                    name: 'password',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0))
                      ),
                      //label:Text('name@example.com'),
                      hintText: 'Confirm password'
                    ),
                    ),


                  SizedBox(height: 40,), 

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        )
                      );
                    },
                    child: Text('SAVE'),
                    style: ElevatedButton.styleFrom(),
                  ),
                    
              ],
            )
            
            
            ),
        


        ]
        )
        )  ,
    );
  }
}