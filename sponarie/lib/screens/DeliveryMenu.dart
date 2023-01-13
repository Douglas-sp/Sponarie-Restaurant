import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DeliveryMenu extends StatefulWidget {
  const DeliveryMenu({super.key});

  @override
  State<DeliveryMenu> createState() => _DeliveryMenuState();
}

var Store_Location = ["Wandegeya","Bwaise","Kawempe","Ndejje","Karakaveni","Ntinda"];
var Favourite = ["coffee","Milk Tea","Tea","Bakery","Pizza","Snacks","Burger"];

class _DeliveryMenuState extends State<DeliveryMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Delivery",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black87,
              ),
            ),
            trailing: Wrap(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search_rounded, color: Colors.black87),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/delivery.png"),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 6.0, top: 12.0),
              child: Text("Deliver to"),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CoCIS, Makerere Pool Road",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                //IntrinsicHeight(
                //child:
                Row(
                  children: [
                    Text("Crescentia"),
                    SizedBox(
                      width: 4,
                    ),
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

                    SizedBox(
                      width: 4,
                    ),
                    Text("0771358056"),
                  ],
                ),
                //)
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
              ),
            ),
          ),
          FormBuilderDropdown(
            name: "Location",
            items: Store_Location.map(
              (location) => DropdownMenuItem(
                value: location,
                child: Text(location),
              )
            ).toList(),
          ),
          ListView.builder(
            itemCount: Favourite.length,
            itemBuilder: (context, index) {
              return ListTile(
                // leading: CircleAvatar(
                //   backgroundImage: AssetImage("assets/images/pureblack.png"),
                // ),
                title: Text(Favourite[index]),
                // subtitle: Text("12000 UGX",
                //     style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 15.0,
                //   ),
                // ),
              );
              
            }),
            
        ],
      ),
    );
  }
}
