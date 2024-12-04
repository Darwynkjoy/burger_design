import 'package:burger/homepage.dart';
import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget{
  const Welcomepage({super.key});
  @override
  
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          SizedBox(height: 150,),

          Center(
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/deliveryboy.png"),fit: BoxFit.cover)),
            ),
          ),
          
          SizedBox(height: 80,),

          Text("The Fastest Food",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),
          Text("Delivery App in Town",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),

          SizedBox(height: 30,),

          Text("Pick your desired food items from the menu",style: TextStyle(fontSize: 16,color: Colors.black),),
          Text("There are more than 200 items",style: TextStyle(fontSize: 16,color: Colors.black),),

          SizedBox(height: 40,),

          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                backgroundColor: const Color.fromARGB(255, 255, 33, 17)
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()));
              }, child: Text("sign in",style: TextStyle(fontSize: 18,color: Colors.white),)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?",style: TextStyle(fontSize: 16,color: Colors.black),),
              TextButton(onPressed: (){}, child: Text("sign up",style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 255, 33, 17)),))
            ],
          ),
        ],
      ),
    );
  }
}