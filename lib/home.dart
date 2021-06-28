import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Ecom extends StatefulWidget {

  @override
  _EcomState createState() => _EcomState();
}

class _EcomState extends State<Ecom> {

  List <dynamic> lst = ["Iphone 12pro", "Note 20 ultra", "Mercedes", "Wireless", "Mutton", "Macbook Air" ] ;
   List <dynamic> Lst3 = [
    'assets/img1.jpg',
    'assets/img2.jpg',
    'assets/img3.jpg',
    'assets/img4.jpg',
    'assets/img5.jpg',
    'assets/img6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Items", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              Text("View more", style: TextStyle(fontSize: 18, color: Colors.purple),),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.shade200,
                    width: 2,),
              borderRadius: BorderRadius.circular(12),

            ),
            margin: EdgeInsets.all(4),
            // alignment: Alignment.center,
            constraints: BoxConstraints.expand(height:270,),
            child: imageSlider(context) ,
          ),
          SizedBox(
            height: 20,
          ),

          Text("More Categories", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 20,
          ),

          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade200,
                width: 2,),
              borderRadius: BorderRadius.circular(12),

            ),
            constraints: BoxConstraints(
                minHeight: 70, minWidth:300,  maxHeight: 70, maxWidth: 300 ),
            child: catSlider(context) ,
          ),

          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Items", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              Text("View more", style: TextStyle(fontSize: 18, color: Colors.purple),),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children:
              List.generate(lst.length, (index)  {
                return
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade200,
                    ),
                    borderRadius:  BorderRadius.circular(12),
                  ),
                  child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    ClipRRect (
                    borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(Lst3[index],

                    width: 180,
                  ),
                    ),
                        Text("${lst[index]}", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),

                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              "5.0 (23 Reviews)",
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey,),
                            ),
                          ],
                        ),



                      ],
                    )




              );




              })

          )











        ],
      ),


    );
  }
}

// *******************************************************************

    Swiper imageSlider(context){
      final List imgList = [
        'assets/img1.jpg',
        'assets/img2.jpg',
        'assets/img3.jpg',
        'assets/img4.jpg',
        'assets/img5.jpg',
      ];
      final List txtList = [
        'Macbook Air',
        'Macbook pro',
        'Gaming Pc',
        'Mercedes',
        'Note20 Ultra',
      ];

      return

      new Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(
                    child: new Image.asset(imgList[index],
                    fit: BoxFit.fitWidth),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(txtList[index], style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold), ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        "5.0 (23 Reviews)",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey,),
                      ),
                    ],
                  ),



                ],
              );
        },
        itemCount: 5,
        scale: 0.8,

      );
    }



// *************************************************************

Swiper catSlider(context){
  final List img2List = [
    'assets/img1.jpg',
    'assets/img2.jpg',
    'assets/img3.jpg',
    'assets/img4.jpg',
    'assets/img5.jpg',
  ];
  final List catxtList = [
    'Clothes',
    'Electronics',
    'Appliances',
    'Household',
    'Others',
  ];

  return

    new Swiper(
      autoplay: false,
      itemBuilder: (BuildContext context, int index) {
        return
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.purple,
                  ),
                  Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(catxtList[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), )),
                      Text(
                        "5 items",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey,),
                      ),
                    ],
                  ),



                ],

              ),





            ],
          );
      },
      itemCount: 5,
      scale: 0.8,
      viewportFraction:0.4,

    );
}