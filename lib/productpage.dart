import 'package:burger/homepage.dart';
import 'package:flutter/material.dart';

class Productpage extends StatelessWidget{
  String? image;
  String? price;
  String? name;
  Productpage({super.key,required this.image,required this.name,required this.price});
  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(onTap: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=>Homepage()));
        },child: Icon(Icons.arrow_back_ios)),
        title: Text("Details",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Icon(Icons.favorite,color: const Color.fromARGB(255, 255, 33, 17),),
          SizedBox(width: 10,)
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image!),fit: BoxFit.cover)),
              ),
            ),
            Container(
              height: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(backgroundColor: const Color.fromARGB(255, 255, 33, 17)),
                  CircleAvatar(backgroundColor: const Color.fromARGB(255, 216, 216, 216),),
                  CircleAvatar(backgroundColor: Color.fromARGB(255, 216, 216, 216),),
                ],
              ),
            ),
            SizedBox(height: 30,),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name!,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Text(price!,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:const Color.fromARGB(255, 255, 33, 17)),), 
              ],
            ),
            Row(
              children: [
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star,color: Colors.yellow,),
                Icon(Icons.star_half,color: Colors.yellow,),
              ],
            ),
            SizedBox(height: 15,),
            Text("Ingredients",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            SizedBox(height: 20,),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  width: 80 ,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 212, 188, 255),image: DecorationImage(image: AssetImage("assets/images/cheese-48401.png"),scale: 15)),
                ),
                  Container(
                  height: 80,
                  width: 80 ,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 161, 224, 255),image: DecorationImage(image: AssetImage("assets/images/beef.png"),scale: 30)),
                ),
                Container(
                  height: 80,
                  width: 80 ,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 255, 234, 140),image: DecorationImage(image: AssetImage("assets/images/onion.png"),scale: 16)),
                ),
                  Container(
                  height: 80,
                  width: 80 ,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 255, 155, 155),image: DecorationImage(image: AssetImage("assets/images/tomato.png"),scale: 50)),
                ),
                SizedBox(height: 20,),
              ],
            ),
            
            SizedBox(height: 20,),

            Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Text("This beef burger uses 100% quality beef with sliced tomatoes, cucumber, vegitables and ",style: TextStyle(fontSize: 17,color: Colors.grey,),),
            Row(
              children: [
                Text("onions...",style: TextStyle(fontSize: 16,color: Colors.grey,),),
                TextButton(onPressed: (){}, child: Text("Read More",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 255, 33, 17),fontWeight: FontWeight.bold),)),
              ],
            ),

            SizedBox(height: 20,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 215, 167, 167)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 45,
                          width: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                              backgroundColor: const Color.fromARGB(255, 231, 231, 231),
                            ),
                            onPressed: (){},
                            child: Text("-",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),)
                          ),
                        ),
                        
                        Text("1",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        
                        SizedBox(
                          height: 45,
                          width: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                              backgroundColor: Color.fromARGB(255, 255, 33, 17),
                            ),
                            onPressed: (){},
                            child: Text("+",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),)
                          ),
                        ),
                        ],
                    ),
                  ),
                ),

                SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                              backgroundColor: Color.fromARGB(255, 255, 33, 17),
                            ),
                            onPressed: (){},
                            child: Text("Add To Cart",style: TextStyle(fontSize: 25,color: Colors.white),)
                          ),
                        ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}