import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sponarie/screens/Logininpage.dart';

class SignupsScreen extends StatefulWidget {
  const SignupsScreen({super.key});

  @override
  State<SignupsScreen> createState() => _SignupsScreenState();
}

class _SignupsScreenState extends State<SignupsScreen> {
  //DateTime _dateTime = DateTime(2022);

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
          ),
        ),
        //---header end--
        SizedBox(
          height: 70.0,
        ),
        Text(
          'Sign Up',
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: FormBuilderTextField(
              name: 'Full Name',
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      //borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  label: Text('Name'),
                  hintText: "Crescentia",
                  )
                  ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: FormBuilderTextField(
              name: 'Email',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
                label: Text('Email'),
                hintText: "name@example.com",
              )),
        ),
        SizedBox(
          height: 20.0,
        ),
        // Padding(
        //   padding: const EdgeInsets.all(15.0),
        //   child: FormBuilderTextField(
        //       name: 'dob',
        //       textInputAction: TextInputAction.next,
        //       decoration: InputDecoration(
        //           border: OutlineInputBorder(
        //               //borderSide: BorderSide(color: Colors.blue),
        //               borderRadius: BorderRadius.all(Radius.circular(12.0))),
        //           label: Text('Date of Birth'),
        //           hintText: "${_dateTime.day}-${_dateTime.month}-${_dateTime.year}",
        //           )
        //           ),
        // ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: FormBuilderTextField(
              name: 'Password',
              obscureText: true,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  labelText: 'Password',
                  hintText: "min. 8 characters",
                  suffixIcon: Icon(Icons.visibility)
                  )
                  ),
        ),
        SizedBox(
          height: 27.0,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Sign Up'),
          style: ElevatedButton.styleFrom(),
        ),
        SizedBox(
          height: 40.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Have an account already?',
              style: TextStyle(fontSize: 15.0),
            ),
            InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              }),
              child: Text(
                'Log In',
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 132, 234),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ]),
    ));
  }
}
