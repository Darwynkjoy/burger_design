import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});
  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.more_horiz),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: CircleAvatar(backgroundImage: AssetImage("assets/images/cheese-48401.png"),))
              ],
            ),

            SizedBox(height: 25,),

            Text("Delicious food ready to\ndelivered for you",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),

            SizedBox(height: 25,),

            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 241, 241, 241),),
              child: Row(
                children: [

                  SizedBox(width: 10,),

                  Icon(Icons.search,color: Colors.grey,size: 40,),

                  SizedBox(width: 10,),

                  Text("Search...",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 226, 226, 226)),)
                ],
              ),
            ),

            SizedBox(height: 20,),

            Expanded(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemBuilder: (context,index){
                return Container(
                  height: 20,
                  width: 20,
                  color: Colors.amber,
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}