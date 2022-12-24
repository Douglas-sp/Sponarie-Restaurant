import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';


class SignupsScreen extends StatefulWidget {
  const SignupsScreen({super.key});

  @override
  State<SignupsScreen> createState() => _SignupsScreenState();
}

class _SignupsScreenState extends State<SignupsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 50.0, left: 70.0),
              child: Row(
                children:[ 
                  Text('Sponarie ', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold), ),
                  Text('Restaurant', style: TextStyle(fontSize: 25.0, color: Color.fromARGB(255, 8, 132, 234), fontWeight: FontWeight.bold),),
                  ]
              
              ),
            ),
            

            Text('Sign Up', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
            

            SizedBox(height: 70.0,),

              
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FormBuilderTextField(
                  name: 'Full Name',
                  textInputAction:TextInputAction.next,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.blue),
                   borderRadius: BorderRadius.all(Radius.circular(12.0))
                  ),
                  label: Text('Name') 
                  )
              ),
            ),
             
             SizedBox(height: 20.0,),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FormBuilderTextField(
                name: 'Email',
                keyboardType:TextInputType.emailAddress,
                textInputAction:TextInputAction.next,
                decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(12.0))
                ),
                label: Text('Email'),
                )
              ),
            ),


              SizedBox(height: 20.0,),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FormBuilderTextField(
                name: 'Password',
                obscureText: true,
                textInputAction:TextInputAction.done,
                decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(12.0))
                ),
                labelText: 'Password',
                suffixIcon: Icon(Icons.visibility)
                )
              ),
            ),


              SizedBox(height: 30.0,),

            ElevatedButton(
              onPressed: (){}, 
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                ),
            ),

              SizedBox(height: 60.0,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text('Have an account already?', style: TextStyle(fontSize: 15.0),),
                  Text('Log In', style: TextStyle(color: Color.fromARGB(255, 8, 132, 234),fontSize: 15.0, fontWeight: FontWeight.bold),)
              ],
            )

            


              ] 
            
            
               
            
            ),
    );
            
          
        
  
  }
}