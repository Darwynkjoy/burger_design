import 'package:flutter/material.dart';

class Productpage extends StatelessWidget{
  const Productpage({super.key});
  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Details",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Icon(Icons.favorite,color: const Color.fromARGB(255, 255, 33, 17),),
          SizedBox(width: 10,)
        ],
      ),

      body: Column(
        children: [
          Center(
            child: Container(
              height: 350,
              width: 350,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}