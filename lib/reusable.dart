import 'package:flutter/material.dart';

Card reusableCard(Image image, String text, String smallText) {
  return Card(
    color: Colors.white,
    child: Container(
      height: 170,
      width: 130,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Image(image: image.image),
          ),
          Text(text,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          Text(smallText,style: TextStyle(fontSize: 10),)
        ],
      ),
    )
  );
}
Column reusableColumn(Image img1, Image img2, String txt1, String txt2){
  return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: img1.image,
                      ),
                      SizedBox(height: 15,),
                      Text(txt1,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: img2.image,
                    ),
                    SizedBox(height: 15,),
                    Text(txt2,)
                  ],
                ),
              )
            ],
  );
}
Card reusableContainer(String text, Image img, String rating){
  return Card(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: img,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 4,),
              Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),softWrap: true,overflow: TextOverflow.visible,),
              Expanded(child: SizedBox()),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.green
                ),

                child:Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 5,),
                    Text(rating, style: TextStyle(color: Colors.white),),
                    Icon(Icons.star, color: Colors.white,size: 25,),
                    SizedBox(width: 4,),
                  ],
                ),

              ),
              SizedBox(width: 5,)
            ],
          ),
        ],
      ),
    ),
  );
}