import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50.0),
            child: ListTile(
              leading:Icon(Icons.arrow_back_ios_new_rounded) ,)
            //child: Icon(Icons.arrow_back),
            
          ),
          
          Container(
            color: Color.fromARGB(255, 161, 195, 230),
            // width: 300.0,
            // height: 600.0,
            
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(100),
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/images/Bike.png"),
                ),

                SizedBox(height: 50.0,),

                Text("TRACK YOU ORDER",
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18.0,
                ),
                ),

                SizedBox(height: 20.0,),


                Text("Enter your track number before below",
                style: TextStyle(
                  fontWeight: FontWeight.normal, fontSize: 11.5,
                ),
                ),

                SizedBox(height: 30.0,),

                FormBuilderTextField(
                  name: "name",
                  decoration: InputDecoration(
                    hintText: "Tracking number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      
                      ),
                    fillColor: Colors.white,
                  ),
                  ),

                  ElevatedButton(
                    onPressed: (){},
                     child: Text("TRACK YOUR ORDER",
                     
                     ))



              ],
            ),
          )
        ],
      ),
    );
  }
}