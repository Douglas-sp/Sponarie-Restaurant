import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          color: Color.fromARGB(0, 58, 58, 58),
          child: Container(
            color: Color.fromARGB(0, 58, 58, 58),
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              children: [
              
                ListTile(
                  title: Text('Welcome to', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15) ,),
                  subtitle: Text("Sponarie Restaurant",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Plate.png'),
                    ),
                  trailing: IconButton(
                    onPressed:(){}, 
                    icon: Icon(Icons.menu),
                    //icon: Icon(Icons.menu),
                    ),
                ),
              
                SizedBox(height: 15,),
              
                Container(
                  width:400,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    color: Color.fromARGB(255, 127, 195, 251)
                  ),
                  
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom:8.0),
                            child: Text('Special Discount', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                          ),
                          subtitle: Text('69% off of all products', style: TextStyle(color: Colors.white, fontSize: 12)), 
                        ),
                      ),
              
                      Image(
                        image: AssetImage('assets/images/banner2.png'),
                      ),
              
                      Image(
                        image: AssetImage('assets/images/banner4.png'),
                      ),
                  ],
                  ),
                ),
        
                //PageView(
                    //children: [
                      //Container(color: Colors.red),
                      //Container(color: Colors.green),
                      //Container(color: Colors.blue),
                     //],
                 //),
                SizedBox(height: 50,),
              
                Container(
                  padding: EdgeInsets.all(15),
                  width:400,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    color: Colors.white
                  ),

                    child: Row(
                      children: [
                          Column(
                          
                            children: [
                              Image(
                                image: AssetImage('assets/images/store.png'),
                              ),
                              SizedBox(height: 15,),
                              Text('Store Pickup', style:TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                              SizedBox(height: 10,),
                              Text('Best quality', style:TextStyle(fontWeight: FontWeight.normal)),
                            ],
                          ),

                          SizedBox(width: 120,),

                          Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/delivery.png'),
                              ),
                              SizedBox(height: 15,),
                              Text('Delivery', style:TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                              SizedBox(height: 10,),
                              Text('Always on time', style:TextStyle(fontWeight: FontWeight.normal)),
                            ],
                          )

                      ],
                      ),
                  ),

                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.only(top: 30),
                  width:400,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    color: Colors.white
                  ),

                    child: Row(
                      children: [
                        
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              children: [
                                Text('Online reservation', style:TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                Text('Table booking', style:TextStyle(fontSize: 14, ), textAlign: TextAlign.start,),
                                SizedBox(height: 20,),
                                OutlinedButton.icon( // <-- OutlinedButton
                                  onPressed: () {},
                                  icon: Icon(
                                        Icons.table_restaurant,
                                        size: 24.0,
                                    ),
                                  label: Text('Reserve a table'),
                                  style: OutlinedButton.styleFrom(
                                      side:BorderSide(color: Colors.blue),
                                      
                                    ),
                                ),
                                
                              ],
                            ),
                          ),
                          SizedBox(width: 40,),

                          Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/reservation.png'),
                              ),

                              SizedBox(height: 15,),

                              OutlinedButton( // <-- OutlinedButton
                                  onPressed: () {},
                                  child: Text('My reservations'),
                                  style: OutlinedButton.styleFrom(
                                      side:BorderSide(color: Colors.blue),
                                      
                                    ),
                                ),
                            ],
                          ),

                          

                      ],
                      ),

                      
                  ),
              
                SizedBox(height: 20,),

                ListTile(
                  title: Text('Promotion Campaign', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}