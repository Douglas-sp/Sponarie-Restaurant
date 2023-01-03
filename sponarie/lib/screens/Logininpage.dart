import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sponarie/screens/ForgotPasswordScreen.dart';
import 'package:sponarie/screens/SignupScreen.dart';



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
           ),

             SizedBox(height: 70.0,),
            
             
               Text("Login",
               style: TextStyle(color: Colors.black87,
               fontWeight: FontWeight.bold,
               fontSize: 25.0),
               
              ),

             SizedBox(height: 20.0,),

             Container(
               padding: EdgeInsets.all(30),
               child: Column(
                children: [
                  FormBuilderTextField(
                    name: "user_name",
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius:BorderRadius.all(Radius.circular(12.0)),
                       ),
                      labelText:"User Name",
                      suffixIcon: Icon(Icons.person,
                      color: Colors.blue[700]
                      ),
                      hintText: "draymond",
                    ),
                  ),

                   SizedBox(height: 30.0,),

                  FormBuilderTextField(
                    name: 'password',
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                    label:Text('Password'),
                    suffixIcon: Icon(Icons.visibility,
                    color: Colors.blue[700],)
                    )
                  ),

                SizedBox(height: 20.0,),   

                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("LOGIN",),
                  style: ElevatedButton.styleFrom(),
                ),
    
                SizedBox(height: 27.0,), 

                InkWell(
                 onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                   builder: ((context) => ForgotPassword() )
                  )
                  );
                },

                child: Text("Forgot Password?",
                style: TextStyle(color:  Color.fromARGB(255, 8, 132, 234),
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
                ),

               ), 

        
               SizedBox(height: 180.0,),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                      style: TextStyle(fontSize: 15.0),
                  ),
            
              InkWell(
                 onTap: (() {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>SignupsScreen(),
                  ),
                );
                }),
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 132, 234),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            )
            ],
            )

         

                
                ],
               ),
             )

         
               
         //Padding(
           //padding: const EdgeInsets.all(15.0),
            
                  
        // ),

         
         
           
            
          ],
        )

        ),

    );
  }
}