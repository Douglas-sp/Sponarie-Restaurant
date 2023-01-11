import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DeliveryMenu extends StatefulWidget {
  const DeliveryMenu({super.key});

  @override
  State<DeliveryMenu> createState() => _DeliveryMenuState();
}

class _DeliveryMenuState extends State<DeliveryMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text("Delivery",
             style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
             ),
            ),
            leading: IconButton(
              onPressed: () {
                
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.black87,),
            ),
            trailing: Wrap(
              children: [
                IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.search_rounded,
                  color: Colors.black87),
                  ),
                 IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.menu,
                  color: Colors.black87,),
                  ),

                
              ],
              
            ),
          ),
          
          ListTile(
            leading: CircleAvatar(
              backgroundImage:AssetImage("assets/images/delivery.png") ,
            ),

            title: Text("Deliver to"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CoCIS, Makerere Pool Road"),
                //IntrinsicHeight(
                  //child: 
                  Row(
                    children: [
                      Text("Crescentia"),
                     SizedBox(width: 4,),
                      // VerticalDivider(
                      //   thickness: 2,
                      //   width: 20,
                      //   color: Colors.black,
                      // ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5.0),
                          
                        ),
                      ),

                      SizedBox(width: 4,),
                      Text("08967543"),
                
                    ],
                  ),
                //)
                
              ],
            ),

            trailing: IconButton(
              onPressed: () {  },
              icon: Icon(Icons.arrow_forward_ios_rounded,),
            ),
          ),
          
        ],
      ),


    );
  }
}