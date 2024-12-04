import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});
  @override

  Widget build(BuildContext context){
    List <Map> imageList=[
      {
        "image":"assets/images/double burger1.png",
        "name":"Double Burger",
        "ingredients":"Double Beef",
        "price":"&7.50",
        "box":"burger"
      },
      {
        "image":"assets/images/burger.png",
        "name":"Beef Burger",
        "ingredients":"Cheesy Mozarella",
        "price":"&7.00",
        "box":"Pizza"
      },
      {
        "image":"assets/images/chicken burger.png",
        "name":"Chicken Burger",
        "ingredients":"American Cheese",
        "price":"&6.50",
        "box":"Soup"
      },
      {
        "image":"assets/images/pepperoni pizza.png",
        "name":"Margarita Pizza",
        "ingredients":"Mozarella Chesse",
        "price":"&8.20",
        "box":"Sandwich"
      },
    ];
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
                Icon(Icons.menu),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/face1.jpg"),fit: BoxFit.cover)),
                ),
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

            SizedBox(
              height: 40,
              child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                return Container(
                  height: 30,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 223, 223, 223),),
                      child: Center(child: Text(imageList[index]["box"],style: TextStyle(fontSize: 20,color: Colors.black),)),
                );
              },
              
              separatorBuilder: (context,index){
                return SizedBox(width: 20,);
              },
              itemCount: 4),
            ),

            SizedBox(height: 20,),

            Text("Most Popular",style: TextStyle(fontSize: 26,color: Colors.black,fontWeight: FontWeight.bold),),

            SizedBox(height: 20,),
            
            Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
              childAspectRatio: 0.6
              ),
              itemCount: 4,
              itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 238, 238, 238)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 160,
                          width: 150,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage(imageList[index]["image"]),fit: BoxFit.cover)),
                        ),
                        Text(imageList[index]["name"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        Text(imageList[index]["ingredients"],style: TextStyle(fontSize: 14,color: Colors.grey),),

                        SizedBox(height: 15,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(imageList[index]["price"],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 33, 17),),),
                            Text("+",style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 255, 33, 17),),),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 255, 33, 17),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: BottomNavigationBarItem(icon: Icons.home)),
        ),
    );
  }
}