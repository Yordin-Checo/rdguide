import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class ResultadoPage extends StatefulWidget {
 

  

  @override
  _ResultadoPageState createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Balnearios"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
        
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 40.0, bottom: 10.0),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 15.0),
                      height: 275.0,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5.0, 200.0, 5.0, 22.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 195.0,
                                  child: Text(
                                    "Hotel Gran Jimenoa",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,//3 puntos
                                    maxLines: 2,//maximo de lineas
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'RD\$500',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '⭐⭐⭐⭐',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),    
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      right: 20.0,
                      top: 1.0,
                      //bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Padding(
                        padding: const EdgeInsets.only(right: 16,left: 16),
                        child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 600,
                        height: 200,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
    
  ),
 child:  ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: SizedBox(
  height: 240.0,
  width: double.infinity,
  child: SizedBox(
    //height: 200.0,
    width: 450.0,
    child: Carousel(
      images: [
        NetworkImage('https://r-cf.bstatic.com/images/hotel/max1024x768/169/169913212.jpg'),
        NetworkImage('https://r-cf.bstatic.com/images/hotel/max1024x768/169/169913212.jpg'),        
      ],
      dotSize: 4.0,
      dotSpacing: 15.0,
      dotColor: Colors.lightGreenAccent,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.transparent,
      borderRadius: true,
      moveIndicatorFromBottom: 180.0,
      noRadiusForIndicator: true,
    )
),
),
                      ),
),
        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      
    )
    );
}
}