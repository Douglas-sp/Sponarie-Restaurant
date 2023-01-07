import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
          Icon(Icons.arrow_back),
          Container(
            child: Column(
              children: [
                // Image(
                //   image: AssetImage("assets\images\Bike.png"),
                //   width: 270,
                //   height: 132,
                //   fit: BoxFit.cover,
                // ),
                Center(
                  child: ListTile(
                    title: Text("TRACK YOUR ORDER",
                    style: TextStyle(fontWeight:FontWeight.bold, ),
                    ),
                    subtitle: Text("Enter your tracking number below"),
                  ),
                )

              ],
            ),
          )
          
        ],
      ),
    );
  }
}