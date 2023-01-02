import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sponarie/screens/ChangePasswordScreen.dart';
import 'package:sponarie/screens/Logininpage.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(children: [
        //---header begin--
        Padding(
          padding: EdgeInsets.only(
            top: 65.0,
            left: 100.0,
          ),
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
        
        SizedBox(height: 70,),

        
       Container(
            padding: EdgeInsets.all(20), 
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

                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Text('Forgot your Password', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    //minVerticalPadding: 15.0,
                    subtitle: Text('Please enter the email address you would like your password reset information sent to'), 
                  ),

                  SizedBox(height: 20,),

                  Text('Enter email address', 
                  textAlign: TextAlign.left,),

                  FormBuilderTextField(
                    name: 'Email',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0))
                      ),
                      //label:Text('name@example.com'),
                      hintText: 'name@example.com'
                    ),
                    ),

                  SizedBox(height: 40,), 

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => ChangePassword(),
                        )
                      );
                    },
                    child: Text('REQUEST RESET LINK'),
                    style: ElevatedButton.styleFrom(),
                  ),

                  SizedBox(height: 40,),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        )
                      );
                    },

                    child: Text('Back To Login',
                    style: TextStyle(
                      color: Color.fromARGB(255, 8, 132, 234),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                      ),
                  )   
                    
              ],
            )
            
            
            ),
        


        ]
        )
        )  
    );
  }
}