import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zomato_clone/reusable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.motorcycle),
            label: 'Delivery',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.plateWheat),
            label: 'Dining',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.ticket),
            label: 'Live',
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Colors.pinkAccent,size: 35,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Patna', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          FaIcon(FontAwesomeIcons.angleDown,size: 20,)
                        ],
                      ),
                      Text('India',)
                    ],
                  ),
          
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: TextField(
          
                      decoration: InputDecoration(
                        hintText: 'Search for restaurants, cuisines...',
                        prefixIcon: Icon(Icons.search_rounded,color: Colors.pink,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.filter_alt_outlined),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(child: Divider(),),
                  SizedBox(width: 10,),
                  Text("EXPLORE",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Expanded(child: Divider(),),
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    reusableCard(Image.asset('assets/images/gift.png'), "Offers", "Flat Discounts"),
                    reusableCard(Image.asset('assets/images/noodle.png'), "Premium", "Selections"),
                    reusableCard(Image.asset('assets/images/train.png'), "Food on train", "Delivery at station"),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(child: Divider(),),
                  SizedBox(width: 10,),
                  Text("WHAT'S ON YOUR MIND?",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Expanded(child: Divider(),),
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      reusableColumn(Image.asset('assets/images/foods/biryani.png'), Image.asset('assets/images/foods/burger.png'), "Biryani", "Burger"),
                      reusableColumn(Image.asset('assets/images/foods/cake.png'), Image.asset('assets/images/foods/chicken.png'), "Cake", "Chicken"),
                      reusableColumn(Image.asset('assets/images/foods/dhosa.png'), Image.asset('assets/images/foods/noodles.png'), "Dhosa", "Noodles"),
                      reusableColumn(Image.asset('assets/images/foods/north_indian.png'), Image.asset('assets/images/foods/paratha.png'), "North Indian", "Paratha"),
                      reusableColumn(Image.asset('assets/images/foods/pizza.png'), Image.asset('assets/images/foods/rolls.png'), "Pizza", "Rolls"),
                    ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(child: Divider(),),
                  SizedBox(width: 10,),
                  Text("ALL RESTAURANTS",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Expanded(child: Divider(),),
                ],
              ),
              SizedBox(height: 10,),
              Text("250 restaurants delivering for you"),
              SizedBox(height: 10,),
              Text("FEATURED"),
              SizedBox(height: 10,),
              reusableContainer("Behrouz Biryani", Image.asset('assets/images/restaurants/Behrouz_biryani.png',), "4.2"),
              reusableContainer("Baking Love Bakers", Image.asset('assets/images/restaurants/Baking_love_Bakers.png'), "4.5"),
              reusableContainer("Haldirams", Image.asset('assets/images/restaurants/Haldirams.png'), "3.6")
            ],
          ),
        ),
      ),
    );
  }
}